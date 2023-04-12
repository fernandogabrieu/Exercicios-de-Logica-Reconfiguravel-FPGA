library IEEE;
use IEEE.std_logic_1164.all;

entity generatecond is 
port( d: in std_logic_vector (0 to 3);
		y: out std_logic_vector (0 to 3));
end generatecond;

architecture funcao of generatecond is
begin
	gen: for i in 0 to 3 generate
		mais_significativo : if i = 0 generate
			y(i) <= '0';
			end generate mais_significativo;
		menos_significativo : if i /= 0 generate
			y(i) <= d(i);
			end generate menos_significativo;	
	end generate gen;
end architecture;