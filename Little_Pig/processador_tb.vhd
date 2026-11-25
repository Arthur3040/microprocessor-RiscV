library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity processador_tb is
end entity;

architecture a_processador_tb of processador_tb is

    component processador is
        port (
            clk           : in  std_logic;
            rst           : in  std_logic;
            estado        : out unsigned(1 downto 0);
            pc_out        : out unsigned(15 downto 0);
            instrucao     : out unsigned(15 downto 0);
            ula_out       : out unsigned(15 downto 0);
            r0_out        : out unsigned(15 downto 0);
            r1_out        : out unsigned(15 downto 0);
            r2_out        : out unsigned(15 downto 0);
            r3_out        : out unsigned(15 downto 0);
            r4_out        : out unsigned(15 downto 0);
            r5_out        : out unsigned(15 downto 0);
            ram_wr_en_out : out std_logic;
            ram_addr_out  : out unsigned(6 downto 0);
            ram_data_in   : out unsigned(15 downto 0);
            ram_data_out  : out unsigned(15 downto 0)
        );
    end component;

    constant period_time : time := 20 ns;
    signal finished      : std_logic := '0';

    signal reset      : std_logic := '0';
    signal clock      : std_logic := '0';
    signal estado     : unsigned(1 downto 0);
    signal PC         : unsigned(15 downto 0);
    signal instrucao  : unsigned(15 downto 0);
    signal saida_ULA  : unsigned(15 downto 0);
    signal R0         : unsigned(15 downto 0);
    signal R1         : unsigned(15 downto 0);
    signal R2         : unsigned(15 downto 0);
    signal R3         : unsigned(15 downto 0);
    signal R4         : unsigned(15 downto 0);
    signal R5         : unsigned(15 downto 0);
    signal ram_wr_en  : std_logic;
    signal ram_addr   : unsigned(6 downto 0);
    signal ram_din    : unsigned(15 downto 0);
    signal ram_dout   : unsigned(15 downto 0);

begin

    uut: processador port map (
        clk           => clock,
        rst           => reset,
        estado        => estado,
        pc_out        => PC,
        instrucao     => instrucao,
        ula_out       => saida_ULA,
        r0_out        => R0,
        r1_out        => R1,
        r2_out        => R2,
        r3_out        => R3,
        r4_out        => R4,
        r5_out        => R5,
        ram_wr_en_out => ram_wr_en,
        ram_addr_out  => ram_addr,
        ram_data_in   => ram_din,
        ram_data_out  => ram_dout
    );

    reset_global: process
    begin
        reset <= '1';
        wait for period_time * 2;
        reset <= '0';
        wait;
    end process;

    sim_time_proc: process
    begin
        -- 24 instrucoes * 3 ciclos * 20 ns = 1440 ns (+ margem)
        wait for 1800 ns;
        finished <= '1';
        wait;
    end process;

    clk_proc: process
    begin
        while finished /= '1' loop
            clock <= '0';
            wait for period_time / 2;
            clock <= '1';
            wait for period_time / 2;
        end loop;
        wait;
    end process;

end architecture;