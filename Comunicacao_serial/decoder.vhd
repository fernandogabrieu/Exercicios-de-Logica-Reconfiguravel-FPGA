
library ieee;
use ieee.std_logic_1164.all;

entity decoder is 

port (SW: in std_logic_vector(1 downto 0);
		dados: out std_logic_vector (7 downto 0);
		LEDR: out std_logic_vector (3 downto 0));

end decoder;

architecture basica of decoder is
begin
 
process (SW)
begin	
	CASE SW IS
		WHEN "00" => dados <= "00110001";
						 LEDR <= "1000";
		WHEN "01" => dados <= "00110010";
						 LEDR <= "0100";
		WHEN "10" => dados <= "00110011";
						 LEDR <= "0010";
		WHEN "11" => dados <= "00110100";
						 LEDR <= "0001";
	END CASE;				

end process;

end basica;

