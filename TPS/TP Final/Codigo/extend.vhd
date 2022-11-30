library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Extend is
	port(	instr: in STD_LOGIC_VECTOR(31 downto 0);
			immsrc: in STD_LOGIC_VECTOR(1 downto 0);
			immext: out STD_LOGIC_VECTOR(31 downto 0);
			ImmExtDoble:out STD_LOGIC_VECTOR(31 downto 0)
	);
end;

architecture behave of Extend is
	
	signal sImmExt: STD_LOGIC_VECTOR(31 downto 0);

begin

	ImmExtDoble <= sImmExt(30 downto 0) & '0';
	immext <= sImmExt;
	process(instr, immsrc)
	begin
		case immsrc is
			-- I-type
			when "00" =>
				sImmExt <= (31 downto 12 => instr(31)) & instr(31 downto 20);
			-- S-types (stores)
			when "01" =>
				sImmExt <= (31 downto 12 => instr(31)) & instr(31 downto 25) & instr(11 downto 7);
			-- B-type (branches)
			when "10" =>
				sImmExt <= (31 downto 11 => instr(31)) & instr(7) & instr(30 downto 25) & instr(11 downto 8);
			-- J-type (jal)
			when "11" =>
				sImmExt <= (31 downto 19 => instr(31)) & instr(19 downto 12) & instr(20) &
instr(30 downto 21);
			when others =>
				sImmExt <= (31 downto 0 => '0');
		end case;
	end process;
end;