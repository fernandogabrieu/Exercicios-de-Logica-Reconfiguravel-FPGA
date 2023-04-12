library ieee;
use ieee.std_logic_1164.all;

entity flipflop is
	port( d, clk, rst : in std_logic_vector(2 downto 0);
			q : out std_logic_vector(2 downto 0));
end flipflop;

architecture funcao of flipflop is
begin
	process(rst, clk)
	begin
		for i in d'range loop
			if(rst(i) = '1') then
					q(i) <= '0';
			ELSIF (clk(i)'event and clk(i)='1') then
					q(i) <= d(i);
			end if;
		end loop;
	end process;
end funcao;
					