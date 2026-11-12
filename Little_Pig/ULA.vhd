library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ULA is
   port( 
        x, y   : in unsigned(15 downto 0);
        op     : in unsigned(1 downto 0);
        saida  : out unsigned(15 downto 0);
        flag_z : out std_logic; 
        flag_n : out std_logic; 
        flag_c : out std_logic; 
        flag_v : out std_logic  
   );
end entity;

architecture ss of ULA is
    signal soma, sub, sig_e, sig_ou : unsigned(15 downto 0);
    signal saida_temp               : unsigned(15 downto 0);
    
    -- aumentei 1 bit pra ter carry funcionando
    signal soma_ext, sub_ext        : unsigned(16 downto 0);
begin
    
    soma_ext <= resize(x, 17) + resize(y, 17);
    sub_ext  <= resize(x, 17) - resize(y, 17);
    soma   <= soma_ext(15 downto 0);
    sub    <= sub_ext(15 downto 0);
    sig_e  <= x and y;
    sig_ou <= x or y;
    
    saida_temp <= 
        soma   when op = "00" else            
        sub    when op = "01" else
        sig_e  when op = "10" else
        sig_ou when op = "11" else
        (others => '0'); -- zerar as outras op
        
    
    saida <= saida_temp;
	 
    -- Zero
    flag_z <= '1' when saida_temp = x"0000" else '0';

    -- Negativo
    flag_n <= saida_temp(15);

    -- Carry
    flag_c <= soma_ext(16) when op = "00" else
              sub_ext(16)  when op = "01" else
              '0'; -- AND e OR tem um carry 0 

    -- Overflow
    flag_v <= ( (not x(15)) and (not y(15)) and soma(15) ) or ( x(15) and y(15) and (not soma(15)) ) when op = "00" else
              ( (not x(15)) and y(15) and sub(15) ) or ( x(15) and (not y(15)) and (not sub(15)) ) when op = "01" else
              '0';

end architecture;