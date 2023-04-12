library ieee;
use ieee.std_logic_1164.all;

entity exercicio is
	port(	sel: in std_logic_vector (1 downto 0);
			en : in std_logic;
			LED: out std_logic_vector (3 downto 0));
end exercicio;


architecture funcao of exercicio is
signal x: std_logic_vector(3 downto 0);
begin
	block1: BLOCK (en='1')
	begin
		with sel select
			x <= 	"0001" when "00",
					"0010" when "01",
					"0100" when "10",
					"1000" when "11";
		LED <= guarded x;
	END BLOCK block1;
end funcao;