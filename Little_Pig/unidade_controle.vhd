library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity unidade_controle is
    port(
        clk        : in  std_logic;
        rst        : in  std_logic;
        rom_data   : in  unsigned(15 downto 0);
        flag_z     : in  std_logic;
        flag_n     : in  std_logic;
        flag_c     : in  std_logic;
        flag_v     : in  std_logic;
        rom_en     : out std_logic;
        wr_en      : out std_logic;
        ram_wr_en  : out std_logic;
        ula_op     : out unsigned(1 downto 0);
        sel_ula_b  : out std_logic;
        sel_write  : out unsigned(1 downto 0);
        pc_en      : out std_logic;
        mux_pc     : out unsigned(1 downto 0);
        estado_out : out unsigned(1 downto 0)
    );
end entity;

architecture a_unidade_controle of unidade_controle is

    signal reg_flag_z : std_logic := '0';
    signal reg_flag_c : std_logic := '0';
    signal wr_flags   : std_logic;

    component maq_estados is
        port(
            clk, rst : in  std_logic;
            estado   : out unsigned(1 downto 0)
        );
    end component;

    signal s_estado : unsigned(1 downto 0);
    signal opcode   : unsigned(3 downto 0);

begin

    wr_flags <= '1' when (s_estado = "01" and (opcode = "0010" or opcode = "0011" or opcode = "0100")) else '0';

    process(clk, rst)
    begin
        if rst = '1' then
            reg_flag_z <= '0';
            reg_flag_c <= '0';
        elsif rising_edge(clk) then
            if wr_flags = '1' then
                reg_flag_z <= flag_z;
                reg_flag_c <= flag_c;
            end if;
        end if;
    end process;

    u_maq: maq_estados port map(
        clk    => clk,
        rst    => rst,
        estado => s_estado
    );

    estado_out <= s_estado;
    opcode     <= rom_data(15 downto 12);

    -- Busca na ROM habilitada no primeiro estado ("00")
    rom_en <= '1' when s_estado = "00" else '0';

    -- Controle de PC (Lab 6 mantido)
    pc_en <= '1' when s_estado = "00" else
             '1' when (s_estado = "10" and (opcode = "0110" or ((opcode = "1000" and reg_flag_c = '1') or (opcode = "0111" and reg_flag_z = '0')))) else
             '0';

    mux_pc <= "10" when (s_estado = "10" and opcode = "0110") else
              "01" when (s_estado = "10" and ((opcode = "1000" and reg_flag_c = '1') or (opcode = "0111" and reg_flag_z = '0'))) else
              "00";

    -- Escrita no Banco de Registradores habilitada no estado "01" (novo LW = "1001")
    wr_en <= '1' when (s_estado = "01" and
                      (opcode = "0001" or -- LD
                       opcode = "0010" or -- ADD
                       opcode = "0011" or -- ADDI
                       opcode = "0100" or -- SUB
                       opcode = "0101" or -- MOV
                       opcode = "1001"))  -- LW
                 else '0';

    -- Escrita na Memoria RAM habilitada no estado "01" apenas para SW ("1010")
    ram_wr_en <= '1' when (s_estado = "01" and opcode = "1010") else '0';

    -- Operacao da ULA: "01" para SUB, "11" (OR) para MOV, "00" (Soma) para ADD/ADDI
    ula_op <= "01" when opcode = "0100" else
              "11" when opcode = "0101" else
              "00";

    -- Entrada B da ULA recebe constante apenas no ADDI ("0011")
    sel_ula_b <= '1' when opcode = "0011" else '0';

    -- MUX de escrita no Banco de Registradores:
    -- "00" = ULA | "01" = Constante (LD) | "10" = Memoria RAM (LW)
    sel_write <= "01" when opcode = "0001" else -- LD
                 "10" when opcode = "1001" else -- LW
                 "00";

end architecture;