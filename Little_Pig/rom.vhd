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
    -- JMP   : 0110_000_0_eeeeeeee  (PC <= eeeeeeee)
    -- BNE   : 0111_000_0_eeeeeeee  (Se R1 != 0, desvia para eeeeeeee)
    -- BLO   : 1000_000_0_eeeeeeee  (Se flag_c = 1, desvia para eeeeeeee)
    -- =========================================================================
    -- PROGRAMA EM ASSEMBLY:
    -- 0  (A): LD   R1, 3      ; Contador = 3
    -- 1  (B): LD   R2, 1      ; Passo = 1
    -- 2  (C): SUB  R1, R2     ; (R1 <= R1 - R2) -> LOOP
    -- 3  (D): BNE  2          ; (Se R1 != 0, volta p/ end 2)
    -- 4  (E): LD   R3, 2      ; Carrega R3 com 2
    -- 5  (F): LD   R4, 5      ; Carrega R4 com 5
    -- 6  (G): SUB  R3, R4     ; (2 - 5 -> ativa flag_c = 1)
    -- 7  (H): BLO  10         ; (Se flag_c = 1, salta p/ end 10)
    -- 8  (I): LD   R5, 255    ; (Instrucao pulada pelo BLO)
    -- 9  (J): JMP  0          ; (Instrucao pulada pelo BLO)
    -- 10 (K): JMP  -2         ; (Salto relativo de -2 em complemento de 2)
    -- =========================================================================

    constant memoria : mem_array := (
			0 => B"0001_001_0_00000011", -- 0: LD   R1, 3      (Contador = 3)
			1 => B"0001_010_0_00000001", -- 1: LD   R2, 1      (Passo = 1)
			2 => B"0100_001_010_000000", -- 2: SUB  R1, R2     (R1 <= R1 - 1) -> LOOP
			3 => B"0111_000_0_00000010", -- 3: BNE  2          (Se R1 != 0, volta p/ end 2)
			4 => B"0001_011_0_00000010", -- 4: LD   R3, 2
			5 => B"0001_100_0_00000101", -- 5: LD   R4, 5
			6 => B"0100_011_100_000000", -- 6: SUB  R3, R4     (2 - 5 -> ativa flag_c = 1)
			7 => B"1000_000_0_00001010", -- 7: BLO  10         (Se flag_c = 1, salta p/ end 10)
			8 => B"0001_101_0_11111111", -- 8: LD   R5, 255    (Instrução pulada pelo BLO)
			9 => B"0110_000_0_00000000", -- 9: JMP  0          (Instrução pulada pelo BLO)
			10=> B"0110_000_0_11111110", -- 10: JMP -2         (Salto relativo de -2 em comp2)
			others => (others => '0')
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