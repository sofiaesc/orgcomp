
-- VHDL Instantiation Created from source file IMem.vhd -- 17:27:14 10/23/2022
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT IMem
	PORT(
		addr : IN std_logic_vector(31 downto 0);          
		instruction : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;

	Inst_IMem: IMem PORT MAP(
		addr => ,
		instruction => 
	);


