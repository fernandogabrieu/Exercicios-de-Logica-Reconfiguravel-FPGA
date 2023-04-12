PROCEDURE inteiroparasegmentos (SIGNAL bs: IN INTEGER; SIGNAL dsp: OUT STD_LOGIC_VECTOR) IS
	BEGIN
	CASE bs IS
	 WHEN 0 => dsp <= "1000000"; --0
	 WHEN 1 => dsp <= "1111001"; --1
	 WHEN 2 => dsp <= "0100100"; --2
	 WHEN 3 => dsp <= "0110000"; --3
	 WHEN 4 => dsp <= "0011001"; --4
	 WHEN 5 => dsp <= "0010010"; --5
	 WHEN 6 => dsp <= "0000010"; --6
	 WHEN 7 => dsp <= "1111000"; --7
	 WHEN 8 => dsp <= "0000000"; --8
	 WHEN 9 => dsp <= "0010000"; --9
	 WHEN OTHERS => dsp <= "0000000";
	END CASE;
END inteiroparasegmentos;
 
 
 
PROCEDURE separar_display (SIGNAL inteiro: IN INTEGER; SIGNAL unidade, dezena, centena, milhar: OUT INTEGER RANGE 0 TO 15) IS
 
BEGIN
if inteiro>999 then
unidade <= inteiro mod 10;
dezena <= (inteiro/10) mod 10;
centena <= (inteiro/100) mod 10;
milhar <= inteiro/1000;
elsif inteiro>99 then
unidade <= inteiro mod 10;
dezena <= (inteiro/10) mod 10;
centena <= (inteiro/100) mod 10;
milhar <= 0;
elsif inteiro>9 then
unidade <= inteiro mod 10;
dezena <= (inteiro/10) mod 10;
centena <= 0;
milhar <= 0;
else
unidade <= inteiro;
dezena <= 0;
centena <= 0;
milhar <= 0;
End if;
END separar_display;	