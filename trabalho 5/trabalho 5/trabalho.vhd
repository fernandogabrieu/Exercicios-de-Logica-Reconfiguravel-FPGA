-- Nome Projeto: trabalho 5
-- Data: 08/12/22
-- Nome: Ronaldo_Gabriel_Manzano_Schlogl/1742957

library ieee;

use ieee.std_logic_1164.all;

entity trabalho is
    port (
        SW : in STD_LOGIC_VECTOR(1 downto 0);
        KEY : in STD_LOGIC_VECTOR(1 downto 0);
        HEX0, HEX1, HEX2 : out STD_LOGIC_VECTOR(6 downto 0);
        LEDR : out STD_LOGIC_VECTOR(0 to 9)
    );

end trabalho;

architecture func of trabalho is
    type ESTADOS_T is (S000, S025, S050, S075, S100, S125, S150);
    signal ESTADO : ESTADOS_T := S000;
    signal RESET : STD_LOGIC;
    
begin
    MAQ_ESTADOS: process (ESTADO, KEY, SW)
	begin
		if KEY(1) = '0' then
			LEDR <= "0000000000";
			HEX0 <= "1000000";
			HEX1 <= "1000000";
			HEX2 <= "1000000";
			estado <= S000;
		elsif falling_edge(KEY(0)) then
			case ESTADO is
				when S000 => -- Estado R$0,00
					LEDR <= "0000000000";
					HEX0 <= "0000001";
					HEX1 <= "0000001";
					HEX2 <= "0000001";
					if SW(0) = '1' then
						ESTADO <= S025;
						LEDR <= "0000000000";
						HEX0 <= "0010010"; --5
						HEX1 <= "0100100"; --2
						HEX2 <= "1000000"; --0
					elsif SW(1) = '1' then
						estado <= S050;
						LEDR <= "0000000000";
						HEX0 <= "1000000";--0
						HEX1 <= "0010010"; --5
						HEX2 <= "1000000"; --0
					end if;
					
				when S025 => -- Estado R$0,25
					if SW(0) = '1' then
						ESTADO <= S050;
						LEDR <= "0000000000";
						HEX0 <= "1000000";--0
						HEX1 <= "0010010"; --5
						HEX2 <= "1000000"; --0
					elsif SW(1) = '1' then
						ESTADO <= S075;
						LEDR <= "0000000000";
						HEX0 <= "0010010";--5
						HEX1 <= "1111000"; --7
						HEX2 <= "1000000"; --0
					end if;
						
				when S050 => -- ESTADO R$0,50
					if SW(0) = '1' then
						ESTADO <= S075;
						LEDR <= "0000000000";
						HEX0 <= "0010010";--5
						HEX1 <= "1111000"; --7
						HEX2 <= "1000000"; --0
					elsif SW(1) = '1' then
						ESTADO <= S100;
						LEDR <= "0000001111";
						HEX0 <= "1000000"; --0
						HEX1 <= "1000000"; --0
						HEX2 <= "1111001"; --1
					end if;
					
				when S075 => -- ESTADO R$0,75
					if SW(0) = '1' then
						ESTADO <= S100;
						LEDR <= "0000001111";
						HEX0 <= "1000000"; --0
						HEX1 <= "1000000"; --0
						HEX2 <= "1111001"; --1
					elsif SW(1) = '1' then
						ESTADO <= S125;
						LEDR <= "1000001111";
						HEX0 <= "0010010"; --5
						HEX1 <= "0100100"; --2
						HEX2 <= "1111001"; --1
					end if;
					
				when S100 => -- ESTADO R$1,00
					if SW(0) = '1' then
						ESTADO <= S125;
						LEDR <= "0000000000";
						HEX0 <= "0010010"; --5
						HEX1 <= "0100100"; --2
						HEX2 <= "1111001"; --1
					elsif SW(1) = '1' then
						ESTADO <= S150;
						LEDR <= "0000000000";
						HEX0 <= "1000000"; --0
						HEX1 <= "0010010"; --5
						HEX2 <= "1111001"; --1
					end if;			
						
				when S125 => -- ESTADO R$1,25
					if SW(0) = '1' then
						ESTADO <= S025;
						LEDR <= "1111110000";
						HEX0 <= "0010010"; --5
						HEX1 <= "0100100"; --2
						HEX2 <= "1000000"; --0
					elsif SW(1) = '1' then
						ESTADO <= S050;
						LEDR <= "1111110000";
						HEX0 <= "1000000";--0
						HEX1 <= "0010010"; --5
						HEX2 <= "1000000"; --0
					end if;
				
				 when S150 => -- ESTADO R$1,50
					 if SW(0) = '1' then
						  ESTADO <= S025;
						  LEDR <= "1111110001";
						  HEX0 <= "0010010"; --5
						  HEX1 <= "0100100"; --2
						  HEX2 <= "1000000"; --0
					 elsif SW(1) = '1' then
						  ESTADO <= S050;
						  LEDR <= "1111110001";
						  HEX0 <= "1000000";--0
						  HEX1 <= "0010010"; --5
						  HEX2 <= "1000000"; --0
					end if;	                                        
			end case;
		end if;
	end process;
end func;