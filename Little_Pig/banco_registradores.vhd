library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity banco_registradores is
    port (
        clk     : in  std_logic;
        rst     : in  std_logic;
        wr_en   : in  std_logic;
        reg_wr  : in  unsigned(2 downto 0);
        data_wr : in  unsigned(15 downto 0);
        reg_r1  : in  unsigned(2 downto 0);
        reg_r2  : in  unsigned(2 downto 0);
        data_r1 : out unsigned(15 downto 0);
        data_r2 : out unsigned(15 downto 0);
        r0_dbg  : out unsigned(15 downto 0);
        r1_dbg  : out unsigned(15 downto 0);
        r2_dbg  : out unsigned(15 downto 0);
        r3_dbg  : out unsigned(15 downto 0);
        r4_dbg  : out unsigned(15 downto 0);
        r5_dbg  : out unsigned(15 downto 0)
    );
end banco_registradores;

architecture BR of banco_registradores is

    component Reg is
        port (
            clk      : in  std_logic;
            rst      : in  std_logic;
            wr_en    : in  std_logic;
            data_in  : in  unsigned(15 downto 0);
            data_out : out unsigned(15 downto 0)
        );
    end component;

    signal load0, load1, load2, load3, load4, load5 : std_logic;
    signal r0_out, r1_out, r2_out, r3_out, r4_out, r5_out : unsigned(15 downto 0);

begin

    load0 <= '1' when (wr_en = '1' and reg_wr = "000") else '0';
    load1 <= '1' when (wr_en = '1' and reg_wr = "001") else '0';
    load2 <= '1' when (wr_en = '1' and reg_wr = "010") else '0';
    load3 <= '1' when (wr_en = '1' and reg_wr = "011") else '0';
    load4 <= '1' when (wr_en = '1' and reg_wr = "100") else '0';
    load5 <= '1' when (wr_en = '1' and reg_wr = "101") else '0';

    REG0: Reg port map (clk => clk, rst => rst, wr_en => load0, data_in => data_wr, data_out => r0_out);
    REG1: Reg port map (clk => clk, rst => rst, wr_en => load1, data_in => data_wr, data_out => r1_out);
    REG2: Reg port map (clk => clk, rst => rst, wr_en => load2, data_in => data_wr, data_out => r2_out);
    REG3: Reg port map (clk => clk, rst => rst, wr_en => load3, data_in => data_wr, data_out => r3_out);
    REG4: Reg port map (clk => clk, rst => rst, wr_en => load4, data_in => data_wr, data_out => r4_out);
    REG5: Reg port map (clk => clk, rst => rst, wr_en => load5, data_in => data_wr, data_out => r5_out);

    data_r1 <= r0_out when reg_r1 = "000" else
               r1_out when reg_r1 = "001" else
               r2_out when reg_r1 = "010" else
               r3_out when reg_r1 = "011" else
               r4_out when reg_r1 = "100" else
               r5_out when reg_r1 = "101" else
               (others => '0');

    data_r2 <= r0_out when reg_r2 = "000" else
               r1_out when reg_r2 = "001" else
               r2_out when reg_r2 = "010" else
               r3_out when reg_r2 = "011" else
               r4_out when reg_r2 = "100" else
               r5_out when reg_r2 = "101" else
               (others => '0');

    r0_dbg <= r0_out;
    r1_dbg <= r1_out;
    r2_dbg <= r2_out;
    r3_dbg <= r3_out;
    r4_dbg <= r4_out;
    r5_dbg <= r5_out;

end BR;