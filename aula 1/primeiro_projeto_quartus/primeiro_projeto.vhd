--LIBRARY ieee;
--USE ieee.std_logic_1164.all;
--
--ENTITY primeiro_projeto IS
--	PORT (IN1 : IN std_logic;
--			IN2 : IN std_logic;
--			IN3 : IN std_logic;
--		SAIDA1 : OUT std_logic;
--		SAIDA2 : OUT std_logic);
--END primeiro_projeto;
--
--ARCHITECTURE logica OF primeiro_projeto IS
--BEGIN
--	SAIDA1 <= (IN1 AND IN2) OR IN3;
--	SAIDA2 <= (IN1 XOR IN2) AND NOT IN3;
--	
--	--SAIDA2 <= IN1 XOR IN2;
--END logica;

LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY primeiro_projeto IS
	PORT (
	--A, B, C, D, S1, S2 : IN std_logic;
	--IN1, IN2, IN3, IN4 : IN std_logic;
		--SAIDA : OUT std_logic);
		A0, A1 : IN std_logic;
		D0, D1, D2, D3: OUT std_logic);
	--IN1, IN2, IN3 : IN std_logic;
	--SAIDA1, SAIDA2 : OUT std_logic);
END primeiro_projeto;

ARCHITECTURE logica OF primeiro_projeto IS
BEGIN
--	SAIDA1 <= (IN1 AND IN2) OR IN3;
--	SAIDA2 <= (IN1 XOR IN2) AND NOT IN3;
--	
	--SAIDA2 <= IN1 XOR IN2;
	--SAIDA <= (A and NOT S1 and NOT S2) OR (B and NOT S1 and S2) OR (C and S1 and NOT S2) OR (D and S1 and S2);
	 --SAIDA <= NOT ((IN1 AND IN2) OR (IN3 AND IN4));
	D0 <= (NOT A0 and NOT A1);
	D1 <= (A0 and NOT A1);
	D2 <= (NOT A0 and A1);
	D3 <= (A0 AND A1);
END logica;