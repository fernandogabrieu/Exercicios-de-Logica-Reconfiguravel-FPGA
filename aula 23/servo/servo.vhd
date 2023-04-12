library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity servo is
    PORT(
			CLOCK_50: in std_logic;
			SW : in std_logic_vector (0 downto 0)
			GPIO_0: out std_logic_vector(0 downto 0));
end servo;

architecture funcao  of servo is
	signal tempo: integer range 0 to 1000000; --tempo de 1 ciclo em 50Hz
	signal t_on: integer range 0 to 1000000;	--tempo em que GPIO_0(0) fica em '1'
begin														--para 0.6 ms: 30.000, para 2,4ms : 120.000
	ciclo_50hz: process(CLOCK_50)
	begin
		if CLOCK_50'event and CLOCK_50 = '1' then
			if tempo = 100000 then
				tempo <= 1;
			else
				tempo <= tempo+1;
			end if;
		end if;
	end process;
	
	ctrol: process(SW(0))
	begin
		if SW(0)='1' then
				t_on <= 30000; --0.6ms
			else
				t_on <= 120000; --2.4ms
			end if;
	end process;
	
	duty : process(tempo)
	begin 
		if tempo<=t_on then
			GPIO_0(0) <= '1';
		else
			GPIO_0(0) <= '0';
		end if;
	end process;

end funcao ;