-- Nome Projeto: trabalho 3
-- Data: 26/10/2022
-- Nome: Ronaldo G M Schlogl

library IEEE;
use IEEE.std_logic_1164.all;

entity trabalho is 
	PORT( SW : in std_logic_vector (7 downto 0);
			HEX0, HEX1, HEX2 : out std_logic_vector (6 downto 0));
end trabalho;

architecture funcao of trabalho is
begin
	process (sw)
	variable sumzero: integer range 0 to 9;
	variable summais: integer range 0 to 9;
	variable summenos: integer range 0 to 9;
begin
sumzero := 0;
summais := 0;
summenos := 0;

	zeros: for i in 0 to 7 loop
		if( SW(i) = '0') then
			sumzero := sumzero + 1;
		end if;
	end loop; 
	
	case sumzero is
		when 0 => HEX2 <= "1000000";
		when 1 => HEX2 <= "1111001";
		when 2 => HEX2 <= "0100100";
		when 3 => HEX2 <= "0110000";
		when 4 => HEX2 <= "0011001";
		when 5 => HEX2 <= "0010010";
		when 6 => HEX2 <= "0000010";
		when 7 => HEX2 <= "1111000";
		when 8 => HEX2 <= "0000000";
		when 9 => HEX2 <= "0000100";
		when others => HEX2 <= "0110000";
	end case;
	
	mais: for i in 7 downto 0 loop
		case SW(i) is
			when '1' => summais := summais + 1;
			when others => exit;
		end case;
	end loop;
	
	case summais is
		when 0 => HEX0 <= "1000000";
		when 1 => HEX0 <= "1111001";
		when 2 => HEX0 <= "0100100";
		when 3 => HEX0 <= "0110000";
		when 4 => HEX0 <= "0011001";
		when 5 => HEX0 <= "0010010";
		when 6 => HEX0 <= "0000010";
		when 7 => HEX0 <= "1111000";
		when 8 => HEX0 <= "0000000";
		when 9 => HEX0 <= "0000100";
		when others => HEX0 <= "0110000";
	end case;
	
	menos: for i in 0 to 7 loop
		case SW(i) is
			when '1' => summenos := summenos + 1;
			when others => exit;
		end case;
	end loop;
	
	case summenos is
		when 0 => HEX1 <= "1000000";
		when 1 => HEX1 <= "1111001";
		when 2 => HEX1 <= "0100100";
		when 3 => HEX1 <= "0110000";
		when 4 => HEX1 <= "0011001";
		when 5 => HEX1 <= "0010010";
		when 6 => HEX1 <= "0000010";
		when 7 => HEX1 <= "1111000";
		when 8 => HEX1 <= "0000000";
		when 9 => HEX1 <= "0000100";
		when others => HEX1 <= "0110000";
	end case;
	
end process;
end funcao;