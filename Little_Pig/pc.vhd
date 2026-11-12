library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity pc is
    port(
        clk      : in  std_logic;
        rst      : in  std_logic;
        
        pc_en    : in  std_logic; 
        
        data_in  : in  unsigned(15 downto 0); 
        
        data_out : out unsigned(15 downto 0)
    );
end entity;

architecture a_pc of pc is

    signal s_pc_at : unsigned(15 downto 0) := (others => '0');
begin

    process(clk, rst)
    begin
   
        if rst = '1' then
            s_pc_at <= (others => '0');
            

        elsif rising_edge(clk) then

            if pc_en = '1' then
                s_pc_at <= data_in;
            end if;
        end if;
    end process;

    data_out <= s_pc_at;
end architecture;