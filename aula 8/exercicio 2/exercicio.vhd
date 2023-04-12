library ieee;
use ieee.std_logic_1164.all;

entity exercicio is
	port( d, clk, rst: in std_logic;
			q_guarded, q: out std_logic);
end exercicio;

architecture funcao of exercicio is
begin 
	bloco1: block(clk='1')
	begin
		q_guarded <= guarded '0' when rst='1' else d;
		q <= d;
	end block bloco1;
end funcao;