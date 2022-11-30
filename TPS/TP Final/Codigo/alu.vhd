library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.all;

entity ALU is
	port(	
		SrcA, SrcB: in STD_LOGIC_VECTOR(31 downto 0);
		ALUControl: in STD_LOGIC_VECTOR(2 downto 0);
		ALUResult: out STD_LOGIC_VECTOR(31 downto 0);
		Zero: out STD_LOGIC
	);
end ALU;

architecture Behavioral of ALU is

	signal sub : unsigned(31 downto 0);
	signal slt, sALUResult: STD_LOGIC_VECTOR(31 downto 0) := x"00000000";
begin
	sub <= unsigned(SrcA) - unsigned(SrcB);
	slt <= X"00000001" when sub(31) = '1' else X"00000000"; 
	with ALUControl(2 downto 0) select 
		sALUResult <= 	SrcA and SrcB when "010",
							SrcA or SrcB when "011",
							SrcA Xor SrcB when "111",
							SrcA + SrcB when "000",
							SrcA - SrcB when "001",
							slt when "101",
							x"00000000" when others;
							
	zero <= '1' when (sALUResult = X"00000000") else '0'; 
	ALUResult <= sALUResult;
--	with ALUControl(2 downto 0) select 
--		ALUResult <= 	SrcA and std_logic_vector(srcb_ext(31 downto 0)) when "010",
--							SrcA or std_logic_vector(srcb_ext(31 downto 0)) when "011",
--							SrcA Xor std_logic_vector(srcb_ext(31 downto 0)) when "111",
--							std_logic_vector(sum_ext(31 downto 0)) when "000"|"001",
--							slt when "101",
--							x"00000000" when others;
end;