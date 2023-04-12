library IEEE;
use IEEE.std_logic_1164.all;

entity whileloop is 
	PORT( entrada : in integer range 0 to 7;
			saida : out std_logic_vector (3 downto 0));
end whileloop;

architecture funcao of whileloop is
begin
	process (entrada)
		variable i : integer range 0 to 4;
begin
	saida <= "0000";
	i := 0;
	
		while (i <= 3) loop
			if(entrada = i) then
				saida(i) <= '1';
			end if;
			i := i + 1;
		end loop;
		
	end process;
end funcao;