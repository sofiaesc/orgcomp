library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity MainDec is
	port(	
		op: in   STD_LOGIC_VECTOR(6 downto 0);
		ResultSrc: out STD_LOGIC_VECTOR(1 downto 0);
		MemWrite: out STD_LOGIC;
		RegWrite, ALUSrc: out STD_LOGIC;
		Branch, Jump, Reg: out STD_LOGIC;
		ImmSrc: out STD_LOGIC_VECTOR(1 downto 0);
		ALUOp: out STD_LOGIC_VECTOR(1 downto 0)
	);
end;

architecture behave of MainDec is
	signal controls: STD_LOGIC_VECTOR(11 downto 0);

begin
	process(op) 
	begin
		case op is
			when "0000011" => controls <= "100100100000"; -- lw
			when "0100011" => controls <= "001110000000"; -- sw
			when "0110011" => controls <= "100000001000"; -- R-type
			when "1100011" => controls <= "010000010100"; -- beq
			when "0010011" => controls <= "100100001000"; -- I-type ALU
			when "1101111" => controls <= "111001000010"; -- jal
			when "1100111" => controls <= "100001000011"; -- jalr
			when others => controls <= "------------"; -- not valid
end case;
end process;

(RegWrite, ImmSrc(1), ImmSrc(0), ALUSrc, MemWrite,
ResultSrc(1), ResultSrc(0), Branch, ALUOp(1), ALUOp(0),
Jump, Reg) <= controls;
end;