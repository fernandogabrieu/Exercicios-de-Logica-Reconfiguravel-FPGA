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
			saida <= "00";
		else
			case estado is
					when A => saida <= "00";
						if(switch = '0') then
							estado <= B;
						else
							estado <= D;
						end if;
					when B => saida <= "01";
						if(switch = '0') then
							estado <= C;
						else
							estado <= A;
						end if;
					when C => saida <= "10";
						if(switch = '0') then
							estado <= D;
						else
							estado <= B;
						end if;
					when D => saida <= "11";
						if(switch = '0') then
							estado <= A;
						else
							estado <= C;
						end if;
				end case;
			end if;
	end if;
end process;
end Maq_est_Moore;
