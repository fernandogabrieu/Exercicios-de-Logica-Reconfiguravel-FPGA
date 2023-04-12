library IEEE;
use IEEE.std_logic_1164.all;

entity exercicio is 
	PORT( KEY: in std_logic_vector(0 downto 0);
	LEDR : OUT std_logic_vector(0 to 3));
end exercicio;

architecture funcao of exercicio is
	signal sum: INTEGER range 0 to 3 := 0;
begin
	process (KEY)
	begin
		if(KEY(0)'EVENT and KEY(0)='1') then
			sum <= sum + 1;
		case sum is
			when 0 => LEDR <= "1000";
			when 1 => LEDR <= "0100";
			when 2 => LEDR <= "0010";
			when 3 => LEDR <= "0001";
			when others => LEDR <= "0000";
		end case;
		end if;
	end process;
end funcao;