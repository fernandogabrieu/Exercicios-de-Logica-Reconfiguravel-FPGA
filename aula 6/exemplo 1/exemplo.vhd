library IEEE;
use IEEE.std_logic_1164.all;

entity exemplo is 
	PORT( SEL : in std_logic_vector (1 downto 0);
			X : out std_logic_vector (7 downto 0));
end exemplo;

architecture funcao of exemplo is
begin
	WITH sel select
	X <= "11000000" when "00",
	"00110000" when "01",
	"00001100" when "10",
	"00000011" when "11";
end funcao;