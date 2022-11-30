library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Mux3 is
	port(	
		d0, d1, d2: in STD_LOGIC_VECTOR(31 downto 0);
		s: in STD_LOGIC_VECTOR(1 downto 0);
		y: out STD_LOGIC_VECTOR(31 downto 0)
	);
end;

architecture behave of Mux3 is
begin
	process(d0, d1, d2, s) begin
		if   (s = "00") then 
			y <= d0;
		elsif (s = "01") then 
			y <= d1;
		elsif (s = "10") then
			y <= d2;
		end if;
	end process;
end;