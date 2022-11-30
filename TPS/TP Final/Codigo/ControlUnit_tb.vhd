--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   18:03:04 10/24/2022
-- Design Name:   
-- Module Name:   /media/sf_VHDL/riscVmonociclo/ControlUnit_tb.vhd
-- Project Name:  riscVmonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ControlUnit
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY ControlUnit_tb IS
END ControlUnit_tb;
 
ARCHITECTURE behavior OF ControlUnit_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ControlUnit
    PORT(
         op : IN  std_logic_vector(6 downto 0);
         funct3 : IN  std_logic_vector(2 downto 0);
         funct7b5 : IN  std_logic;
         ResultSrc : OUT  std_logic_vector(1 downto 0);
         MemWrite : OUT  std_logic;
         Branch : OUT  std_logic;
         ALUSrc : OUT  std_logic;
         RegWrite : OUT  std_logic;
         Jump : OUT  std_logic;
         ImmSrc : OUT  std_logic_vector(1 downto 0);
         ALUControl : OUT  std_logic_vector(2 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal op : std_logic_vector(6 downto 0) := (others => '0');
   signal funct3 : std_logic_vector(2 downto 0) := (others => '0');
   signal funct7b5 : std_logic := '0';

 	--Outputs
   signal ResultSrc : std_logic_vector(1 downto 0);
   signal MemWrite : std_logic;
   signal Branch : std_logic;
   signal ALUSrc : std_logic;
   signal RegWrite : std_logic;
   signal Jump : std_logic;
   signal ImmSrc : std_logic_vector(1 downto 0);
   signal ALUControl : std_logic_vector(2 downto 0);
  
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ControlUnit PORT MAP (
          op => op,
          funct3 => funct3,
          funct7b5 => funct7b5,
          ResultSrc => ResultSrc,
          MemWrite => MemWrite,
          Branch => Branch,
          ALUSrc => ALUSrc,
          RegWrite => RegWrite,
          Jump => Jump,
          ImmSrc => ImmSrc,
          ALUControl => ALUControl
        );


   -- Stimulus process
   stim_proc: process
	begin

      -- insert stimulus here 
		op <= "0000011";	-- lw
		funct3 <= "010";
		funct7b5 <= '0';	-- No importa en este caso
		wait for 100 ns;

		op <= "0100011";	-- sw
		funct3 <= "010";
		funct7b5 <= '0';	-- No importa en este caso
		wait for 100 ns;

		op <= "1100011";	-- beq
		funct3 <= "000";
		funct7b5 <= '0';	-- No importa en este caso
		wait for 100 ns;
		
		op <= "0110011";	-- add
		funct3 <= "000";
		funct7b5 <= '0';	
		wait for 100 ns;
		
		op <= "0110011";	-- sub
		funct3 <= "000";
		funct7b5 <= '1';	
		wait for 100 ns;
		
		op <= "0110011";	-- slt
		funct3 <= "010";
		funct7b5 <= '0';	
		wait for 100 ns;
		
		op <= "0110011";	-- or
		funct3 <= "110";
		funct7b5 <= '0';	
		wait for 100 ns;
		
		op <= "0110011";	-- and
		funct3 <= "111";
		funct7b5 <= '0';	
		wait for 100 ns;
		
		op <= "0010011";	-- addi
		funct3 <= "000";
		funct7b5 <= '0';	
		wait for 100 ns;

		op <= "1101111";	-- jal
		funct3 <= "000";	-- No importa en este caso
		funct7b5 <= '0';	-- No importa en este caso
		wait for 100 ns;
		
   end process;

END;
