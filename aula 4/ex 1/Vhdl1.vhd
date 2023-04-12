--library ieee;
--use ieee.std_logic_1164.all;
--
--entity Vhdl1 is 
--	port (inp : IN std_logic_vector(2 downto 0);
--			outp : OUT std_logic_vector(2 downto 0));
--end Vhdl1;
--
--architecture logica of Vhdl1 IS
--	signal X: std_logic;
--begin
--	X <= inp(0) xor inp(1);
--	outp(2) <= X;
--	outp(1) <= X and not inp(2);
--	outp(0) <= (inp(0) and inp(1)) or inp(2);
--end logica;
--		
library ieee;
use ieee.std_logic_1164.all;

entity Vhdl1 is 
	port (in1, in2, in3 : IN std_logic;
			out1,out2, out3 : OUT std_logic);
end Vhdl1;

architecture logica of Vhdl1 IS
	signal X: std_logic;
begin
	X <= in1 xor in2;
	out3 <= X;
	out2 <= X and not in3;
	out1 <= (in1 and in2) or in3;
end logica;
		