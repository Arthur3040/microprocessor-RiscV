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



            constant memoria : mem_array := (

        --CRIVO DE ERATOSTENES    

        0  => B"0001_000_0_00000000",   -- LD R0, 0
        1  => B"0001_001_0_00000001",   -- LD R1, 1
        2  => B"0001_010_0_01011011",   -- LD R2, 91
        3  => B"0001_011_0_00000010",   -- LD R3, 2
        4  => B"0001_100_0_01111010",   -- LD R4, 122
        5  => B"0001_101_0_00100000",   -- LD R5, 32

        -- R0: Dado 0 para nao primo
        -- R1: Dado 1 para candidato a primo
        -- R2: Ponteiro RAM inicial = 89 + 2, ja q 2 é o primeiro primo
        -- R3: Passo inicial = 2
        -- R4: Limite RAM = 89 + 33 (AQUI EU POSSO AUMENTAR ATÉ QUAL NUMERO ELE VERIFICA SE É PRIMO OU NAO)
        -- R5: Limite N = 32 (AQUI EU POSSO AUMENTAR ATÉ QUAL NUMERO ELE VERIFICA SE É PRIMO OU NAO TBM)


        -- initializar:
        6 => B"1010_001_010_000000", -- SW R1, (R2)
        7  => B"0011_010_0_00000001",   -- ADDI R2, 1
        8  => B"0101_101_010_000000",   -- MOV R5, R2
        9  => B"0100_101_100_000000",   -- SUB R5, R4
        10 => B"0111_000_0_00000110",   -- BNE 6

        11 => B"0001_001_0_00000010",   -- LD R1, 2
        12 => B"0001_011_0_00000110",   -- LD R3, 6 //aqui é 6 pq 6^2 > 32, então não precisa verificar mais que isso




        -- looping:
        13 => B"0101_010_001_000000",   -- MOV R2, R1
        14 => B"0010_010_001_000000",   -- ADD R2, R1
        15 => B"0011_010_0_01011001",   -- ADDI R2, 89


        -- elim:
        16 => B"1010_000_010_000000", -- SW R0, (R2)
        17 => B"0010_010_001_000000",   -- ADD R2, R1
        18 => B"0101_101_010_000000",   -- MOV R5, R2
        19 => B"0100_101_100_000000",   -- SUB R5, R4
        20 => B"1000_000_0_00010000",   -- BLO 16


        --saiu do looping do primo atual:
        21 => B"0011_001_0_00000001",   -- ADDI R1, 1
        22 => B"0101_101_001_000000",   -- MOV R5, R1
        23 => B"0100_101_011_000000",   -- SUB R5, R3
        24 => B"1000_000_0_00001101",   -- BLO 13


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