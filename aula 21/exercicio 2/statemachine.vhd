LIBRARY ieee;
USE ieee.std_logic_1164.all;

entity statemachine is
port(	clk : IN STD_LOGIC;
		reset : IN STD_LOGIC;
		switch : IN STD_LOGIC;
      saida: out std_logic_vector(1 downto 0));
end statemachine;

architecture Maq_est_Moore of statemachine is

type MEUS_ESTADOS is (A, B, C, D);
signal estado: MEUS_ESTADOS;

begin
process(clk)
	begin
	if	clk'event	and	clk= '1' then
------ Maquina de estados	
		if (reset = '0') then
			estado <= A;
		else
			case estado is
					when A => if dir = '1' then
							estado <= B;
						else
							estado <= D;
						end if;
					when B => if dir = '1' then
							estado <= C;
						else
							estado <= A;
						end if;	
					when C => if dir = '1' then
							estado <= D;
						else
							estado <= B;
						end if;
					when D => if dir = '1' then
							estado <= A;
						else
							estado <= C;
						end if;
				end case;
			end if;
	end if;
end process;

process (estado)
begin
	case estado is
		when A => saida <= "00";
		when B => saida <= "01";
		when C => saida <= "10";
		when D => saida <= "11";
	end case;
end process;
end Maq_est_Moore;
