--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   11:42:19 10/24/2022
-- Design Name:   
-- Module Name:   /media/sf_VHDL/riscVmonociclo/RegFile_tb.vhd
-- Project Name:  riscVmonociclo
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RegFile
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
 
ENTITY RegFile_tb IS
END RegFile_tb;
 
ARCHITECTURE behavior OF RegFile_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RegFile
    PORT(
         clk : IN  std_logic;
         WE : IN  std_logic;
         A1 : IN  std_logic_vector(4 downto 0);
         A2 : IN  std_logic_vector(4 downto 0);
         A3 : IN  std_logic_vector(4 downto 0);
         WD : IN  std_logic_vector(31 downto 0);
         RD1 : OUT  std_logic_vector(31 downto 0);
         RD2 : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal WE : std_logic := '0';
   signal A1 : std_logic_vector(4 downto 0) := (others => '0');
   signal A2 : std_logic_vector(4 downto 0) := (others => '0');
   signal A3 : std_logic_vector(4 downto 0) := (others => '0');
   signal WD : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
   signal RD1 : std_logic_vector(31 downto 0);
   signal RD2 : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RegFile PORT MAP (
          clk => clk,
          WE => WE,
          A1 => A1,
          A2 => A2,
          A3 => A3,
          WD => WD,
          RD1 => RD1,
          RD2 => RD2
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
      wait for 50 ns;

      -- insert stimulus here 
		WE <= '1';
		-- Registros fuente de donde se buscan las salidas RD1 y RD2
		A1 <= "00100"; -- Registro x4
		A2 <= "00101";	-- Registro x5
		
		-- Registro donde se va a escribir
		A3 <= "00100";	-- Registro x4
		
		WD <= x"0001fff0"; -- Dato a escribir en x4
		
		wait for 100 ns;
		
		-- Registro donde se va a escribir
		A3 <= "00101";	-- Registro x5
		
		WD <= x"000f1110"; -- Dato a escribir en x5
		
		wait for 100 ns;
		
		A1 <= "00000";	-- Registro x0
		-- Registro donde se va a escribir
		A3 <= "00000";	-- Registro x0, donde no deberia poder escribirse
		
		WD <= x"00111110"; -- Dato a escribir en x5
		
		wait for 100 ns;
		

      wait for 650 ns;
   end process;

END;
