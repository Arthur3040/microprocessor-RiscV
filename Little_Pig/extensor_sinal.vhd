library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity extensor_sinal is
    port(
        const_in  : in  unsigned(7 downto 0);
        const_out : out unsigned(15 downto 0)
    );
end entity;

architecture a_extensor_sinal of extensor_sinal is
begin
    -- lembrando que complemento de 2 (pedido pelo professor) e -2^n-1 ate 2^n+1, fiz a logica ser a mesma, repetindo o bit mais significavo(7)
	 -- para as maiores, e & e concatenaçao, mesmo || no pdf.
    const_out <= "00000000" & const_in when const_in(7) = '0' else
                 "11111111" & const_in;
end architecture;