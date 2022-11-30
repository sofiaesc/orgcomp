----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    08:57:17 11/11/2022 
-- Design Name: 
-- Module Name:    comparador - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity comparador is
	port(
		a,b: in STD_LOGIC_VECTOR(31 downto 0);
		menor: out STD_LOGIC
	);
end comparador;

architecture Behavioral of comparador is

	signal u_a, u_b: unsigned(31 downto 0);
	signal comparacion: boolean;

begin

	u_a <= unsigned(a);
	u_b <= unsigned(b);

	comparacion <= u_a < u_b;
	with comparacion select
		menor <= '1' when TRUE, '0' when FALSE;

end Behavioral;

