library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.NUMERIC_STD.all;

entity RegFile is
	port(	clk: in STD_LOGIC;
			WE: in STD_LOGIC;
			A1, A2, A3: in STD_LOGIC_VECTOR(4 downto 0);
--			SavePC: in STD_LOGIC;
			WD: in STD_LOGIC_VECTOR(31 downto 0);
			RD1, RD2: out STD_LOGIC_VECTOR(31 downto 0));
end;

architecture behave of RegFile is

type ramtype is array (31 downto 0) of STD_LOGIC_VECTOR(31 downto 0);
signal regs: ramtype := (
--	X"00000000",	-- 31
--	X"00000000",	-- 30
--	X"00000000",	-- 29
--	X"00000000",	-- 28
--	X"00000000",	-- 27
--	X"00000000",	-- 26
--	X"00000000",	-- 25
--	X"00000000",	-- 24
--	X"00000000",	-- 23
--	X"00000000",	-- 22
--	X"00000000",	-- 21
--	X"00000000",	-- 20
--	X"00000000",	-- 19
--	X"00000000",	-- 18
--	X"00000000",	-- 17
--	X"00000000",	-- 16
--	X"00000000",	-- 15
--	X"00000000",	-- 14
--	X"00000000",	-- 13
--	X"00000000",	-- 12
--	X"00000000",	-- 11
--	X"00000000",	-- 10
--	X"00000001",	-- 9
--	X"00000003",	-- 8
--	X"00000000",	-- 7
--	X"00000000",	-- 6
--	X"00000000",	-- 5
--	X"00000000",	-- 4
--	X"00000000",	-- 3
--	X"00000000",	-- 2
--	X"00000000",	-- 1
	others => x"00000000"
);

begin
-- three ported register file
-- read two ports combinationally (A1/RD1, A2/RD2)
-- write third port on rising edge of clock (A3/WD3/WE3)
-- register 0 hardwired to 0
	process(clk) begin
		if rising_edge(clk) then
			if (WE = '1' and conv_integer(A3) /= 0) then 
				regs(conv_integer(A3)) <= WD;
			end if;
		end if;
	end process;
	
	RD1 <= regs(conv_integer(A1)) when A1 /= "00000" else X"00000000";
	RD2 <= regs(conv_integer(A2)) when A2 /= "00000" else X"00000000";

end;