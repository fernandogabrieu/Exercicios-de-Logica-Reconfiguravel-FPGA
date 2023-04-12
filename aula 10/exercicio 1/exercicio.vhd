library IEEE;
use IEEE.std_logic_1164.all;

entity exercicio is 
	PORT( SW: in std_logic_vector(3 downto 0);
	HEX0 : OUT std_logic_vector(0 to 6));
end exercicio;

architecture funcao of exercicio is
begin
	process (SW)
	begin
		case SW is
			when "0000" => HEX0 <= "0000001";
			when "0001" => HEX0 <= "1001111";
			when "0010" => HEX0 <= "0010010";
			when "0011" => HEX0 <= "0000110";
			when "0100" => HEX0 <= "1001100";
			when "0101" => HEX0 <= "0100100";
			when "0110" => HEX0 <= "0100000";
			when "0111" => HEX0 <= "0001111";
			when "1000" => HEX0 <= "0000000";
			when "1001" => HEX0 <= "0000100";
			when others => HEX0 <= "0110000";
		end case;
	end process;
end funcao;