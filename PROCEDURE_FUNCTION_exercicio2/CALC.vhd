----------------------------------------------------
-- Código top-level calc.vhd
----------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;
LIBRARY work;
USE work.package_calculadora.all;


------------------------------------------------------------------------------------------------------------------------------------------------------------
ENTITY CALC IS
	PORT(SW : IN STD_LOGIC_VECTOR(6 downto 0); --SW 012 A; SW 345 B; SW 6 SEL;	
	     HEX0: OUT STD_LOGIC_VECTOR(6 downto 0);
        HEX1: OUT STD_LOGIC_VECTOR(6 downto 0);
        HEX2: OUT STD_LOGIC_VECTOR(6 downto 0);
        HEX3: OUT STD_LOGIC_VECTOR(6 downto 0));
END CALC;

------------------------------------------------------------------------------------------------------------------------------------------------------------

ARCHITECTURE logic of CALC IS
Signal A, B : INTEGER RANGE 0 TO 7;
Signal OUTPUT : INTEGER RANGE 0 TO 63;
Signal unidade, dezena, centena, milhar: INTEGER RANGE 0 TO 15;
BEGIN
	PROCESS(SW)
	Begin
	A <= to_integer(unsigned(SW(2 downto 0)));
	B <= to_integer(unsigned(SW(5 downto 3)));
	inteiroparasegmentos(B, HEX3);
	inteiroparasegmentos(A, HEX2);
	calculadora(A, B, SW(6), OUTPUT);
	separar_display(OUTPUT, unidade, dezena, centena, milhar);
	inteiroparasegmentos(unidade, HEX0);
   inteiroparasegmentos(dezena, HEX1);
	
	END PROCESS;
END logic;
------------------------------------------------------------------------------------------------------------------------------------------------------------

