library ieee;
use ieee.std_logic_1164.all;

entity exercicio is
port( d, clk, rst: in std_logic;
		q_guarded_sinc, q_assinc: out std_logic);
end exercicio;

architecture funcao of exercicio is
begin
	blocol: BLOCK (clk'EVENT and clk='1')
	begin 
		q_guarded_sinc <= guarded '0' when rst='1' else d;
		q_assinc <= d;
	end block blocol;
end funcao;