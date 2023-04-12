--
--library ieee;
--use ieee.std_logic_1164.all;
--
--entity rs232 is 
--
--port (dados: in std_logic_vector (7 downto 0); 			-- dados provenientes do decoder
--	   clk: in std_logic;							  			-- clock de 9600Khz para protocolo serial
--	   enable: in std_logic;	  							   -- Habilitar transmissão
--	   tx: out std_logic := '1');			      		   -- dados seriais enviados para a saída
--end rs232;
--
--architecture basica of rs232 is
--
--begin
--process (clk, enable)
--variable transmissao: std_logic_vector (9 downto 0) := (others => '0');
--variable dados_velho: std_logic_vector (7 downto 0);
--begin
--	if (enable='1') then
--		transmissao (8 downto 1) := dados;
--		if (clk='1' and clk'event) then
--			if (dados_velho /= dados) then					
--				for i in 0 to 9 loop
--				tx <= transmissao(i);
--				end loop;
--				dados_velho := dados;
--			else
--				tx<='1';
--					
--			end if;
--		end if;
--	end if;
--end process;
--
--end basica;


library ieee;
use ieee.std_logic_1164.all;

entity rs232 is 

port (dados: in std_logic_vector (7 downto 0); 			-- dados provenientes do decoder
	   clk: in std_logic;							  			-- clock de 9600Khz para protocolo serial
	   enable: in std_logic;	  							   -- Habilitar transmissão
	   tx: out std_logic := '1');			      		   -- dados seriais enviados para a saída
end rs232;

architecture basica of rs232 is

begin
process (clk, enable)
variable count: integer range 0 to 9 := 0;
variable dados_velho: std_logic_vector (7 downto 0) := (others => '0');

begin
	if (enable='1') then
		
		if (clk='1' and clk'event) then
			
			if (dados /= dados_velho)  then
				case count is
				when 0 => tx<= '0';
				when 1 => tx<= dados(0);
				when 2 => tx<= dados(1);
				when 3 => tx<= dados(2);
				when 4 => tx<= dados(3);
				when 5 => tx<= dados(4);
				when 6 => tx<= dados(5);
				when 7 => tx<= dados(6);
				when 8 => tx<= dados(7);
				when 9 => tx<= '0';
				end case;	
				count := count+1;
				
				if (count>9) then
					count := 0;
					dados_velho := dados;
				end if;
			else
					tx<='1';
			end if;
		end if;
	end if;
end process;

end basica;