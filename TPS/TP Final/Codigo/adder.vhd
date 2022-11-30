library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.NUMERIC_STD.all; --*

entity Adder is
	port(	a, b: in STD_LOGIC_VECTOR(31 downto 0);
			y: out STD_LOGIC_VECTOR(31 downto 0));
end;

architecture behave of Adder is
	
	signal sy: unsigned(31 downto 0);

begin
	sy <= unsigned(a) + unsigned(b); 
	y <= STD_LOGIC_VECTOR(sy);
end;