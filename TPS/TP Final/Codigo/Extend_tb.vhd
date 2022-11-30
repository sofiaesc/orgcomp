--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:52:02 10/24/2022
-- Design Name:   
-- Module Name:   /media/sf_VHDL/riscVmonociclo/Extend_tb.vhd
-- Project Name:  riscVmonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Extend
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
 
ENTITY Extend_tb IS
END Extend_tb;
 
ARCHITECTURE behavior OF Extend_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Extend
    PORT(
         instr : IN  std_logic_vector(31 downto 7);
         immsrc : IN  std_logic_vector(1 downto 0);
         immext : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal instr : std_logic_vector(31 downto 7) := (others => '0');
   signal immsrc : std_logic_vector(1 downto 0) := (others => '0');

 	--Outputs
   signal immext : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Extend PORT MAP (
          instr => instr,
          immsrc => immsrc,
          immext => immext
        );

   -- Stimulus process
   stim_proc: process
   begin		
      -- insert stimulus here 
		wait for 100 ns;
		instr <= "0010000101010000000001000"; -- Debe dar 533
		immsrc <= "00";

      wait for 500 ns;
   end process;

END;
