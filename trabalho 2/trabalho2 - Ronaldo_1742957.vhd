--Nome Projeto: Trabalho 2
--Data: 29/09/2022
--Nome: Ronaldo_Gabriel_Manzano_Schlogl / 1742957

library ieee;
use ieee.std_logic_1164.all;

entity trabalho is
	generic(N : integer := 4);
	port( KEY : in std_logic_vector(0 downto 0);
			SW : in std_logic_vector(0 to N+1);
			LEDR : buffer std_logic_vector(2 to N+1));
end trabalho;

architecture funcao of trabalho is
begin
	gen: for i in 2 to N+1 generate
		process(SW, KEY)
		begin
			if (SW(0) = '0') then
				LEDR(i) <= '0';
			elsif (KEY(0)'EVENT and KEY(0)='0' and SW(1)='1') then
				LEDR(i) <= SW(i);
			end if;
			end process;				
	end generate gen;
end funcao;
					