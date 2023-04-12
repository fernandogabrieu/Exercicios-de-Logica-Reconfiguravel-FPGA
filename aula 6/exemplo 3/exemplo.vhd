library ieee;
use ieee.std_logic_1164.all;

entity exemplo is
	Port ( en : in std_logic;
			sel : in std_logic_vector (1 downto 0);
			saida : out std_logic_vector (3 downto 0));
end exemplo;

architecture funcao of exemplo is
begin 
	with sel select
		x <= "0001" when "00",
			"0010" when "01",
			"0100" when "10",
			"1000" when "11";
		with en select
		saida <= x when '1',
		"0000" when others;
end funcao;
			