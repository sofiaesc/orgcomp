library IEEE;
use IEEE.STD_LOGIC_1164.all;
--use STD.TEXTIO.all;
use IEEE.NUMERIC_STD.all;
--use ieee.std_logic_textio.all;

entity IMem is
	port(	addr: in STD_LOGIC_VECTOR(31 downto 0);
			instruction: out STD_LOGIC_VECTOR(31 downto 0));
end;

architecture behave of IMem is
--	type ramtype is array(63 downto 0) of STD_LOGIC_VECTOR(31 downto 0);
---- initialize memory from file
--	impure function init_ram_hex return ramtype is
--	file text_file : text open read_mode is "riscvtest.txt";
--		variable text_line : line;
--		variable ram_content : ramtype;
--		variable i : integer := 0;
--
--begin
--	for i in 0 to 63 loop -- set all contents low
--		ram_content(i) := (others => '0');
--	end loop;
--  
--	while not endfile(text_file) loop -- set contents from file
--		readline(text_file, text_line);
--		hread(text_line, ram_content(i));
--		i := i + 1;
--	end loop;
--  
--	return ram_content;
--end function;
--
--	signal mem : ramtype := init_ram_hex;
--begin
---- read memory
--	process(addr) begin
--		instruction <= mem(to_integer(unsigned(addr(31 downto 2))));
--	end process;
type rom_type is array (0 to 10) of std_logic_vector (31 downto 0);                 
--type rom_type is array (0 to 7) of std_logic_vector (31 downto 0);                 
signal ROM : rom_type:= (
	-- Inicio de la seccion de instrucciones para excepciones
	X"00002303",	-- lw x6, 0(x0)
	X"00134313",	-- xori x6, x6, 1
	X"00602023",	-- sw x6, 0(x0)
	X"00008067",	-- jalr x0, x1, 0
	
	
	-- Fin
	
	-- Inicio de la seccion de instrucciones de programa
	X"00006513",	-- 		ori a0,zero,0
	X"00a52613",	-- loop:	slti a2,a0,30
	X"00060663",	--			beq a2,zero,fin
	X"00150513",	-- 		addi a0,a0,1			<- saltaria aca con la primera instr
	X"fe000ae3",	--			beq x0,x0,loop
	X"00000000",	-- fin:
	-- Fin
	others => X"00000000");
begin
--Busqueda
instruction <= ROM(to_integer(unsigned(addr(31 downto 2))));
end;