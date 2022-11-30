library IEEE;
use IEEE.STD_LOGIC_1164.all;
use STD.TEXTIO.all;
use IEEE.NUMERIC_STD.all;

entity DMem is
	port(	
		clk, WE: in STD_LOGIC;
		addr, WD:   in STD_LOGIC_VECTOR(31 downto 0);
		RD: out STD_LOGIC_VECTOR(31 downto 0);
		valor_led: out std_logic
	);
end;

architecture behave of DMem is

	signal registro_led: std_logic_vector(31 downto 0);

begin

	
	process (clk, addr) --is -- este is no va
		type ramtype is array (63 downto 0) of STD_LOGIC_VECTOR(31 downto 0);
		variable data_mem: ramtype := (others => x"00000000");
	begin
		if falling_edge(clk) then
			if (WE = '1') then 
				data_mem(to_integer(unsigned(addr(7 downto 2)))) := WD;
			end if;
		end if;
		RD <= data_mem(to_integer(unsigned(addr(7 downto 2))));
		
		-- El valor de estado del led se guarda en posicion de memoria 0.
		registro_led <= data_mem(0);
		valor_led <= registro_led(0);
   end process;
	
	
	
end;