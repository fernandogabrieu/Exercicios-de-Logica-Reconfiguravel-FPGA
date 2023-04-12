library ieee;
use ieee.std_logic_1164.all;

entity exemplo is
	generic ( N : integer :=4); --numero de bits
	port ( sel : in std_logic_vector (1 downto 0);
			A,B,C,D : in std_logic_vector (N-1 downto 0);
			X : out std_logic_vector (N-1 downto 0));
end exemplo;

architecture funcao of exemplo is 
begin 
	WITH sel select
	X <= A when "00",
	B when "01",
	C when "10",
	D when "11";
end funcao;