LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY somador_completo IS 
	PORT(
	A, B, carry_in : IN std_logic;
	carry_out, sum : OUT std_logic);
END somador_completo;

ARCHITECTURE logica of somador_completo IS
BEGIN
	sum <= (A xor B) xor carry_in;
	carry_out <= (A and B) or ((A xor B) and carry_in);
END logica;