library ieee;
use ieee.std_logic_1164.all;

entity exerc is
port (a,b,t, en: in std_logic;
		sum, cout: out std_logic);
end exerc;

architecture funcao of exerc is
begin
	bloco1: block (en='1')
	begin
		sum <= guarded (a xor b) when t='1' else 'Z';
		cout <= guarded (a and b) when t='1' else 'z';
	end block bloco1;
end funcao;