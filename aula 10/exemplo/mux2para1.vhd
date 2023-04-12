library IEEE;
use IEEE.std_logic_1164.all;

entity mux2para1 is 
	PORT( SW: in std_logic_vector(2 downto 0);
	LEDR : OUT std_logic_vector(0 downto 0));
end mux2para1;

architecture funcao of mux2para1 is
begin
	process (SW(0), SW(1), SW(2))
	begin
		case SW(2) is
			when '0' => LEDR(0) <= SW(0);
			when others => LEDR(0) <= SW(1);
		end case;
	end process;
end funcao;