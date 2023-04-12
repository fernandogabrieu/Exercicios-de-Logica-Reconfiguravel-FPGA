library IEEE;
use IEEE.std_logic_1164.all;

entity cond_incond is 
port( d: in std_logic_vector (3 downto 0);
		y: out std_logic_vector (3 downto 0));
end cond_incond;

architecture funcao of cond_incond is
begin
	gen: for i in 3 downto 0 generate
		cond : if i = 3 generate
			y(i) <= d(i);
			end generate cond;
		incond : if i /= 3 generate
			y(i) <= d(i+1) xor d(i);
			end generate incond;	
	end generate gen;
	
--	output(3) <= input(3);
--	gen1: for i in 2 downto 0 generate
--		output(i) <= input(1) xor input(i+1);
--		end generate gen1;
end architecture;
