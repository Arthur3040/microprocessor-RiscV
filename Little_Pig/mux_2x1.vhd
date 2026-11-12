library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity mux_2x1 is
    port( --pra mim faz mais sentido usar a e b como do que 1 ou 2, e entrada 1 entrada 2 fica muito longo.
        a   : in  unsigned(15 downto 0); 
        b   : in  unsigned(15 downto 0); 
        sel : in  std_logic;
        data_out   : out unsigned(15 downto 0)
    );
end entity;

architecture a_mux2_x1 of mux_2x1 is
begin
    data_out <= a when sel = '0' else b;
end architecture;