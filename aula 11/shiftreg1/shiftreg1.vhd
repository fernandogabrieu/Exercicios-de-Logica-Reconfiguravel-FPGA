library ieee;
use ieee.std_logic_1164.all;

entity shiftreg1 is
	generic(N : integer := 4);
	port( serial, clk : in std_logic;
			Q : buffer std_logic_vector(N - 1 downto 0));
end shiftreg1;

architecture funcao of shiftreg1 is
begin
	process(clk)
	begin
		if clk'EVENT and clk = '1' then
			deslocador : for i in 0 to n-2 loop
				Q(i) <= Q(i+1);
			end loop;
			Q(N-1) <= serial;
		end if;
	end process;
end funcao;
					