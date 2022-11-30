--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:23:18 10/23/2022
-- Design Name:   
-- Module Name:   /media/sf_VHDL/riscVmonociclo/IMem_tb.vhd
-- Project Name:  riscVmonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: IMem
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
 
ENTITY IMem_tb IS
END IMem_tb;
 
ARCHITECTURE behavior OF IMem_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT IMem
    PORT(
         addr : IN  std_logic_vector(31 downto 0);
         instruction : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal addr : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal instruction : std_logic_vector(31 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: IMem PORT MAP (
          addr => addr,
          instruction => instruction
        );


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 50 ns.
      wait for 50 ns;	

    

      -- insert stimulus here 
		addr <= x"00000000";
		wait for 20 ns;
		addr <= x"00000004";
		wait for 20 ns;
		addr <= x"00000008";
		
      wait;
   end process;

END;
