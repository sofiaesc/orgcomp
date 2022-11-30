--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:42:10 11/07/2022
-- Design Name:   
-- Module Name:   /media/sf_VHDL/riscVmonociclo/DMem_tb.vhd
-- Project Name:  riscVmonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: DMem
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
 
ENTITY DMem_tb IS
END DMem_tb;
 
ARCHITECTURE behavior OF DMem_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT DMem
    PORT(
         clk : IN  std_logic;
         WE : IN  std_logic;
         addr : IN  std_logic_vector(31 downto 0);
         WD : IN  std_logic_vector(31 downto 0);
         RD : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal WE : std_logic := '0';
   signal addr : std_logic_vector(31 downto 0) := (others => '0');
   signal WD : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal RD : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: DMem PORT MAP (
          clk => clk,
          WE => WE,
          addr => addr,
          WD => WD,
          RD => RD
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		WE 	<= '1';
		addr 	<= X"00000000";
		WD 	<= X"00000013";
		wait for 100 ns;
		WE 	<= '0';
		addr 	<= X"00000003";
		wait for 100 ns;
		WE 	<= '0';
		addr 	<= X"00000004";
		
		
      -- insert stimulus here 
		
		
		

      wait;
   end process;

END;
