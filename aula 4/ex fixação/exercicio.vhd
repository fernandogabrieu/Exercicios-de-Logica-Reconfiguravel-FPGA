library ieee;
use ieee.std_logic_1164.all;

entity exercicio is
	port( saida1 : out std_logic_vector(1 to 8);
			saida2 : out std_logic_vector(0 to 3);
			saida3 : out std_logic_vector(3 downto 0));
end exercicio;

architecture logica of exercicio is
	constant x1: std_logic_vector(1 to 8) := "00110000";
	constant x2: std_logic_vector(0 to 3) := "1101";
	constant x3: std_logic_vector(3 downto 0) := "1101";
begin
	saida1 <= x1;
	saida2 <= x2;
	saida3 <= x3;
end logica;