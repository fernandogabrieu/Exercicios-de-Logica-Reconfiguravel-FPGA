entity mux is
	Port( SEL: in std_logic;
			A, EN : in std_logic;
			B : in std_logic_vector (7 downto 0);
			X : out std_logic_vector (7 downto 0));
end mux;

architecture funcao of mux is
	Signal A1: std_logic_vector (7 downto 0);
begin
	process (A)
		Begin
		for i in A1'range loop
			A1(i) <= A;
		end loop;
	end process;
	x <= A1 when EN='1' and SEL='1' else
		B when EN='1' and SEL='0' else
		"00000000";
end funcao;