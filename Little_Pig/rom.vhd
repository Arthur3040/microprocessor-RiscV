library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity rom is
    port(
        clk      : in  std_logic;
        rom_en   : in  std_logic;
        endereco : in  unsigned(15 downto 0);
        dado_out : out unsigned(15 downto 0)
    );
end entity;

architecture a_rom of rom is

    type mem_array is array (0 to 127) of unsigned(15 downto 0);

    -- =========================================================================
    -- CODIFICACAO DAS INSTRUCOES (16 bits) - 2 Operandos Ortogonais:
    -- NOP   : 0000_000_000_000000
    -- LD    : 0001_ddd_0_cccccccc  (Rd <= cccccccc)
    -- ADD   : 0010_ddd_sss_000000  (Rd <= Rd + Rs)
    -- ADDI  : 0011_ddd_0_cccccccc  (Rd <= Rd + cccccccc)
    -- SUB   : 0100_ddd_sss_000000  (Rd <= Rd - Rs)
    -- MOV   : 0101_ddd_sss_000000  (Rd <= Rs)
    -- JMP   : 0110_000_0_eeeeeeee  (PC <= PC + 1 + offset)
    -- BNE   : 0111_000_0_eeeeeeee  (Se flag_z = 0, PC <= eeeeeeee)
    -- BLO   : 1000_000_0_eeeeeeee  (Se flag_c = 1, PC <= eeeeeeee)
    -- LW    : 1001_ddd_sss_000000  (Rd <= RAM[Rs])
    -- SW    : 1010_ddd_sss_000000  (RAM[Rs] <= Rd)
    -- =========================================================================
    -- PROGRAMA DE TESTE DA RAM (Dados variados, enderecos espacados, regs embaralhados):
    -- 0  : LD  R0, 42      ; Dado 1 = 42 (0x2A)
    -- 1  : LD  R1, 10      ; Endereco 1 = 10
    -- 2  : SW  R0, (R1)    ; RAM[10] <= 42
    -- 3  : LD  R2, 99      ; Dado 2 = 99 (0x63)
    -- 4  : LD  R3, 35      ; Endereco 2 = 35
    -- 5  : SW  R2, (R3)    ; RAM[35] <= 99
    -- 6  : LD  R4, 17      ; Dado 3 = 17 (0x11)
    -- 7  : LD  R5, 60      ; Endereco 3 = 60
    -- 8  : SW  R4, (R5)    ; RAM[60] <= 17
    -- 9  : LD  R0, 100     ; Endereco 4 = 100 (sobrescreve R0)
    -- 10 : LD  R1, 73      ; Dado 4 = 73 (0x49) (sobrescreve R1)
    -- 11 : SW  R1, (R0)    ; RAM[100] <= 73
    -- 12 : LD  R2, 0       ; Zera R2 para garantir que nao sobrou lixo
    -- 13 : LD  R4, 0       ; Zera R4 para garantir que nao sobrou lixo
    -- 14 : LD  R3, 10      ; Novo ponteiro p/ end 10 (antes era R1)
    -- 15 : LW  R5, (R3)    ; R5 <= RAM[10]  -> esperado: 42 (0x2A)
    -- 16 : LD  R1, 60      ; Novo ponteiro p/ end 60 (antes era R5)
    -- 17 : LW  R0, (R1)    ; R0 <= RAM[60]  -> esperado: 17 (0x11)
    -- 18 : LD  R2, 35      ; Novo ponteiro p/ end 35 (antes era R3)
    -- 19 : LW  R4, (R2)    ; R4 <= RAM[35]  -> esperado: 99 (0x63)
    -- 20 : LD  R3, 100     ; Novo ponteiro p/ end 100 (antes era R0)
    -- 21 : LW  R1, (R3)    ; R1 <= RAM[100] -> esperado: 73 (0x49)
    -- 22 : ADD R5, R0      ; R5 <= 42 + 17 = 59 (0x3B)
    -- 23 : SUB R4, R1      ; R4 <= 99 - 73 = 26 (0x1A)
    -- =========================================================================

    constant memoria : mem_array := (
        0  => B"0001_000_0_00101010", -- LD  R0, 42
        1  => B"0001_001_0_00001010", -- LD  R1, 10
        2  => B"1010_000_001_000000", -- SW  R0, (R1)  -> RAM[10] = 42
        3  => B"0001_010_0_01100011", -- LD  R2, 99
        4  => B"0001_011_0_00100011", -- LD  R3, 35
        5  => B"1010_010_011_000000", -- SW  R2, (R3)  -> RAM[35] = 99
        6  => B"0001_100_0_00010001", -- LD  R4, 17
        7  => B"0001_101_0_00111100", -- LD  R5, 60
        8  => B"1010_100_101_000000", -- SW  R4, (R5)  -> RAM[60] = 17
        9  => B"0001_000_0_01100100", -- LD  R0, 100
        10 => B"0001_001_0_01001001", -- LD  R1, 73
        11 => B"1010_001_000_000000", -- SW  R1, (R0)  -> RAM[100] = 73
        12 => B"0001_010_0_00000000", -- LD  R2, 0
        13 => B"0001_100_0_00000000", -- LD  R4, 0
        14 => B"0001_011_0_00001010", -- LD  R3, 10
        15 => B"1001_101_011_000000", -- LW  R5, (R3)  -> R5 = 42
        16 => B"0001_001_0_00111100", -- LD  R1, 60
        17 => B"1001_000_001_000000", -- LW  R0, (R1)  -> R0 = 17
        18 => B"0001_010_0_00100011", -- LD  R2, 35
        19 => B"1001_100_010_000000", -- LW  R4, (R2)  -> R4 = 99
        20 => B"0001_011_0_01100100", -- LD  R3, 100
        21 => B"1001_001_011_000000", -- LW  R1, (R3)  -> R1 = 73
        22 => B"0010_101_000_000000", -- ADD R5, R0    -> R5 = 59
        23 => B"0100_100_001_000000", -- SUB R4, R1    -> R4 = 26
        others => (others => '0')     -- NOP
    );

begin
    process(clk)
    begin
        if rising_edge(clk) then
            if rom_en = '1' then
                dado_out <= memoria(to_integer(endereco(6 downto 0)));
            end if;
        end if;
    end process;
end architecture;