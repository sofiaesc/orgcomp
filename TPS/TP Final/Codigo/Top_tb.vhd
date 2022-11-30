--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:36:02 10/23/2022
-- Design Name:   
-- Module Name:   /media/sf_VHDL/riscVmonociclo/Top_tb.vhd
-- Project Name:  riscVmonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Top
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
 
ENTITY Top_tb IS
END Top_tb;
 
ARCHITECTURE behavior OF Top_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Top
    PORT(
         clk: in STD_LOGIC;
			reset: in STD_LOGIC;
			pulsador: in STD_LOGIC;
			salida1, salida2: out std_logic_vector(31 downto 0);
			led_activado: out STD_LOGIC
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
	signal pulsador : std_logic := '0';

 	--Outputs
   signal salida1, salida2 : std_logic_vector(31 downto 0);
	signal led_activado : std_logic; 

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Top PORT MAP (
          clk => clk,
          reset => reset,
			 pulsador => pulsador,
          salida1 => salida1,
			 salida2 => salida2,
			 led_activado => led_activado
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
		reset <= '1';
      wait for 10 ns;	
		reset <= '0';
		
		wait for 10 ns;
		pulsador <= '1';
		wait for 10 ns;
		pulsador <= '0';
		
		wait for 60 ns;
		pulsador <= '1';
		wait for 40 ns;
		pulsador <= '0';
      --wait for 330 ns;	-- Durante este periodo ocurren las instrucciones

      -- insert stimulus here 

      wait;
   end process;

END;
