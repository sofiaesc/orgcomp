----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:36:22 10/24/2022 
-- Design Name: 
-- Module Name:    ControlUnit - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ControlUnit is
	port(
		op: in   STD_LOGIC_VECTOR(6 downto 0);
		funct3: in STD_LOGIC_VECTOR(2 downto 0);
		funct7b5: in STD_LOGIC;
		Zero: in STD_LOGIC;
		IRQ: in STD_LOGIC;
		ResultSrc: out STD_LOGIC_VECTOR(1 downto 0);
		MemWrite: out STD_LOGIC;
		RegWrite, ALUSrc: out STD_LOGIC;
		ImmSrc: out STD_LOGIC_VECTOR(1 downto 0);
		ALUControl: out STD_LOGIC_VECTOR(2 downto 0);
		Reg: out STD_LOGIC;
		PCSrc: out STD_LOGIC
	);
end ControlUnit;

architecture Behavioral of ControlUnit is


	component MainDec
		port(
			op: in   STD_LOGIC_VECTOR(6 downto 0);
			ResultSrc: out STD_LOGIC_VECTOR(1 downto 0);
			MemWrite: out STD_LOGIC;
			RegWrite, ALUSrc: out STD_LOGIC;
			Branch, Jump, Reg: out STD_LOGIC;
			ImmSrc: out STD_LOGIC_VECTOR(1 downto 0);
			ALUOp: out STD_LOGIC_VECTOR(1 downto 0)
		);
	end component;
	
	component AluDec
		port(
			opb5: in STD_LOGIC;
			funct3: in STD_LOGIC_VECTOR(2 downto 0);
			funct7b5: in STD_LOGIC;
			ALUOp: in STD_LOGIC_VECTOR(1 downto 0);
			ALUControl: out STD_LOGIC_VECTOR(2 downto 0)
		);
	end component;

	signal ALUop: STD_LOGIC_VECTOR(1 downto 0);
	signal Branch, Jump: STD_LOGIC;
	signal sResultSrc: std_logic_vector(1 downto 0);
	signal sRegWrite: std_logic;

	
begin	


	PCSrc <= (Jump or (Branch and Zero)); -- Para los saltos

	-- Si se produce una interrupcion siempre debe guardar el dato del PC
	with IRQ select
		ResultSrc <= "10" when '1', sResultSrc when others;
	with IRQ select
		RegWrite <= '1' when '1', sRegWrite when others;

	

	inst_MainDec: MainDec
		port map(
			op => op,
			ResultSrc => sResultSrc,
			MemWrite => MemWrite,
			Branch => Branch,
			ALUSrc => ALUSrc,
			RegWrite => sRegWrite,
			Jump => Jump,
			Reg => Reg,
			ImmSrc => ImmSrc,
			ALUop => ALUop
		);
		
	inst_AluDec: AluDec
		port map(
			opb5 => op(5),
			funct3 => funct3,
			funct7b5 => funct7b5,
			ALUop => ALUop,
			ALUControl => ALUControl
		);

end Behavioral;

