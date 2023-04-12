LIBRARY ieee;
USE ieee.std_logic_1164.all;

ENTITY vetores IS
PORT (
	entrada : IN STD_LOGIC_VECTOR(1 downto 0);
	saida : OUT STD_LOGIC_VECTOR(1 downto 0));
END vetores;

ARCHITECTURE logica OF vetores is 
BEGIN
	saida <= entrada;
END logica;