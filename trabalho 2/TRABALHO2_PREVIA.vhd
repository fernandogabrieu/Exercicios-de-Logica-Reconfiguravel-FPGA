LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Trabalho2 IS
	GENERIC(N : INTEGER := 4);
	PORT(KEY  : IN  STD_LOGIC_VECTOR(0 TO 0);  	  --KEY[0] -- CLK
		  SW   : IN  STD_LOGIC_VECTOR(2 TO N+1);  -- 2 TO 4+1 => D(0) ao D(3)
		  EN : IN STD_LOGIC;
		  CLR : IN STD_LOGIC;
		  LEDR : OUT STD_LOGIC_VECTOR(2 TO N+1)); -- 2 TO 5 => Q(0) ao Q(3)
END ENTITY;

ARCHITECTURE reg_param_1x8 OF Trabalho2 IS
BEGIN
	GEN: FOR i IN 2 TO N+1 GENERATE
		PROCESS(KEY, SW, EN, CLR)
		BEGIN
			IF (CLR = '1') THEN
				LEDR(i) <= '0';
			ELSIF(KEY(0) = '1' AND KEY'EVENT AND EN = '1') THEN 
				LEDR(i) <= SW(i);
			END IF;
		END PROCESS;
	END GENERATE GEN;

END;
