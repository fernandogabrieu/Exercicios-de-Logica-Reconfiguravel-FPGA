library IEEE;
use IEEE.std_logic_1164.all;

entity exercicio is 
	PORT( clk, rot: in std_logic;
			LED : out std_logic_vector (0 to 3));
end exercicio;

architecture funcao of exercicio is
type estados_type is (s0, s1,s2,s3);
signal estado: estados_type := s0;
signal seg: integer range 0 to 10000000 := 0;

begin
	processo_estados: process(clk)
	begin
		if clk'event and clk = '1' then
			if seg = 10000000 then
				case estado is
					when s0 => if rot = '1' then
							estado <= s1; else estado <= s3;
						end if;
					when s1 => if rot = '1' then
							estado <= s2; else estado <= s0;
						end if;
					when s2 => if rot = '1' then
							estado <= s3; else estado <= s1;
						end if;
					when s3 => if rot = '1' then
							estado <= s0; else estado <= s2;
						end if;
				end case;
			seg <= 0;
		else
			seg <= seg+1;
		end if;
	end process;
	
	saida_led: process (estado, seg)
	begin
		if seg = 2500000000 then
		case estado is
			when s0 => LED <= "0001";
			when s1 => LED <= "0010";
			when s2 => LED <= "0100";
			when s3 => LED <= "1000";
		end case;
		end if;
		
		case estado is
			when s0 => LED <= "1000";
			when s1 => LED <= "0100";
			when s2 => LED <= "0010";
			when s3 => LED <= "0001";
		end case
	end process;
end funcao;