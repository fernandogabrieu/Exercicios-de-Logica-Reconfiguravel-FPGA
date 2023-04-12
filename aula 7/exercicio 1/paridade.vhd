library IEEE;
use IEEE.std_logic_1164.all;

entity paridade is 
port( d: in BIT_VECTOR (0 to 5);
		y: out BIT);
end paridade;

architecture funcao of paridade is
	SIGNAL aux: BIT_VECTOR (0 to 3);
begin
	aux(0) <= (d(0) and d(1)) or (d(1) and d(2));
	gen: for i in 1 to 3 generate
		aux(i) <= d(i+2) or aux(i-1);
	end generate gen;
	y<= aux(3);
end architecture;