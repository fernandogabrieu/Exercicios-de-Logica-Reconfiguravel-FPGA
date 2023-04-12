library ieee;
use ieee.std_logic_1164.all;

entity exercicio is
generic (N : INTEGER :=8);
	port( A : in std_logic_vector(N-1 downto 0);
			B : out std_logic_vector(N-1 downto 0);
			C : OUT integer range 0 to N);
end exercicio;

architecture logica of exercicio is
begin
	B <= (B'RIGHT => '1', B'LEFT => '1', OTHERS => '0');
	C <= A'LENGTH;
end logica;