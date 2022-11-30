library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_ARITH.all;

entity ProgramCounter is
	port(	
			clk, reset: in STD_LOGIC;
			PCnext: in STD_LOGIC_VECTOR(31 downto 0);
			PC: out STD_LOGIC_VECTOR(31 downto 0)
		);
end;

architecture asynchronous of ProgramCounter is

	signal direccion_reset: STD_LOGIC_VECTOR(31 downto 0) := X"00000010";

begin
	process(clk, reset) 
	begin
		if reset = '1' then
			PC <= direccion_reset; -- Direccion donde inicia la seccion de instrucciones.
		elsif rising_edge(clk) then
			PC <= PCnext;
		end if;
	end process;
end;