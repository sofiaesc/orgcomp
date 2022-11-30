library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

--top
--    imem    
--    dmem
--    rvsingle
    --  Unidad control
    --  datapath

entity Top is
    port(
    	clk: in STD_LOGIC;
      reset: in STD_LOGIC;
		pulsador: in STD_LOGIC;
		salida1, salida2: out std_logic_vector(31 downto 0);
		led_activado: out STD_LOGIC
    );
end entity;

architecture behave of Top is

   -- component rvsingle
	 
	component ProgramCounter
		port(
			clk, reset: in std_logic;
			PCnext: in std_logic_vector(31 downto 0);
			PC: out std_logic_vector(31 downto 0)
		);
	end component;
	
	component Comparador
		port(
			a,b: in STD_LOGIC_VECTOR(31 downto 0);
			menor: out STD_LOGIC
		);
	end component;
	
	component Adder
		port(
			a, b: in std_logic_vector(31 downto 0);
			y: out std_logic_vector(31 downto 0)
		);
	end component;
	
   component IMem
		port(	
			addr: in STD_LOGIC_VECTOR(31 downto 0);
			instruction: out STD_LOGIC_VECTOR(31 downto 0)
      );
   end component;
	
	component RegFile
		port(
			clk: in STD_LOGIC;
			WE: in STD_LOGIC;
			A1, A2, A3: in STD_LOGIC_VECTOR(4 downto 0);
			WD: in STD_LOGIC_VECTOR(31 downto 0);
			RD1, RD2: out STD_LOGIC_VECTOR(31 downto 0)
		);
	end component;
	
	component Extend
		port(
			instr: in STD_LOGIC_VECTOR(31 downto 0);
			immsrc: in STD_LOGIC_VECTOR(1 downto 0);
			ImmExt: out STD_LOGIC_VECTOR(31 downto 0);
			ImmExtDoble: out STD_LOGIC_VECTOR(31 downto 0)
		);
	end component;
	
	component Mux2
		port(
			d0, d1: in STD_LOGIC_VECTOR(31 downto 0);
			s: in STD_LOGIC;
			y: out STD_LOGIC_VECTOR(31 downto 0)
		);
	end component;
	
	component Mux3
		port(	
			d0, d1, d2: in STD_LOGIC_VECTOR(31 downto 0);
			s: in STD_LOGIC_VECTOR(1 downto 0);
			y: out STD_LOGIC_VECTOR(31 downto 0)
		);
	end component;
		
	component ALU
		port(
			SrcA, SrcB: in STD_LOGIC_VECTOR(31 downto 0);
			ALUControl: in STD_LOGIC_VECTOR(2 downto 0);
			ALUResult: out STD_LOGIC_VECTOR(31 downto 0);
			Zero: out STD_LOGIC
		);
	end component;
	
   component DMem
      port(	
			clk, WE: in STD_LOGIC;
			addr, WD:   in STD_LOGIC_VECTOR(31 downto 0);
			RD: out STD_LOGIC_VECTOR(31 downto 0);
			valor_led: out STD_LOGIC
		);
   end component;
	
	component ControlUnit
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
	end component;

	 
-- Señales del top
--	signal clk, reset: std_logic;
--	signal salida: std_logic_vector(31 downto 0);
	
-- Señales de la unidad de control (ControlUnit)
	signal op_final: std_logic_vector(6 downto 0);
	signal ResultSrc, ImmSrc: std_logic_vector(1 downto 0);
	signal MemWrite, ALUSrc, RegWrite, Reg: std_logic;
	signal ALUControl: std_logic_vector(2 downto 0);
	
-- Señales del contador de programa (ProgramCounter)
	signal PC, PCnext: std_logic_vector(31 downto 0);
	signal direccion_reset: std_logic_vector(31 downto 0) := X"00000010";

-- Señales del sumador del contador de programa (Adder)
	signal PCPlus4, PCTarget, PCfuente, PCSave: std_logic_vector(31 downto 0);
	signal PCTargetFinal: std_logic_vector(31 downto 0); -- Donde se elige la direccion 0 si hay excepcion
	
-- Señales del multiplexor del contador de programa (Inst_MuxPC)	
	signal PCSrc: std_logic;
	
-- Señales de la memoria de instrucciones (IMem)
	signal addr, instruction : std_logic_vector(31 downto 0);

-- Señales del banco de registros (RegFile)
	signal A1, A2, A3: std_logic_vector(4 downto 0);
	signal WD_regfile, RD1, RD2: std_logic_vector(31 downto 0);
	signal RegWriteFinal: std_logic;
	
-- Señales del generador de inmediatos (Extend)
	signal ImmExt: std_logic_vector (31 downto 0); -- La que va a la ALU
	signal ImmExtDoble: std_logic_vector (31 downto 0); -- La que va al PC cuando branch o jump
	signal ImmExtFinal: std_logic_vector (31 downto 0);
	signal DiferenciaPC: std_logic_vector (31 downto 0);
	
-- Señales de la ALU (ALU)
	signal SrcB, ALUResult: std_logic_vector(31 downto 0);
	signal Zero: std_logic;

-- Señales de la memoria de datos (DMem)
	signal RD: std_logic_vector(31 downto 0);
	
-- Señales del comparador del PC actual con la direccion de reset (comparador).
	signal menorPC: std_logic;

begin

-----------------------------------------------------------------------------------------
-- Procedimiento ante una interrupcion:

--	1. La interrucipcion se detecta al comienzo del ciclo en la unidad de control,
--		antes que empiece a ejecutarse una instruccion (PCSave).

--	2. Mientras la señal de interrupcion este activa, se guarda el PC actual en el 
--		registro x1 para recuperar mas tarde la instruccion que se iba a realizar en
--		caso de no haber una interrupcion. 
--		En cada ciclo mientras se ejecutan las instrucciones de ejecucion se comprueba 
--		que el PCactual a guardar corresponda a la seccion de instrucciones, para no 
--		guardar por accidente un PC de la memoria de excepciones. Esto se hace con el
--		componente Comparador.

--	3. Se activa un salto jal hacia la direccion 0 de memoria de instrucciones,
--		donde se encuentra el comienzo de las instrucciones de excepciones. Para lograr
--		esto se reemplazan las correspondientes salidas de la unidad de control por las
-- 	que utilizan las instrucciones jal cuando el pulsador esta activado.

--	4. La ultima instruccion que gestiona la interrupcion debe ser un jalr que retorne
--		a al direccion guardada en x1 para continuar con el curso. 
-----------------------------------------------------------------------------------------


---------- Señales cuyo valor depende del estado de activacion del pulsador.

-- El codigo de operacion se convierte en un jal si el pulsador esta activado.
--	Este jal especial se encarga de guardar el PC actual del programa PCSave, en 
--	vez de PCPlus4.
with pulsador select
	op_final <= "1101111" when '1', instruction(6 downto 0) when others;

-- Debe seleccionarse el registro x1 como registro destino donde se guardará el PC.
with pulsador select
	A3 <= "00001" when '1',
			instruction(11 downto 7) when others;

-- Se elige saltar hacia la direccion 0 si el pulsador esta activado.
with pulsador select
	PCTargetFinal <= X"00000000" when '1', PCTarget when others;
	
-- La decision de escribir o no en el registro para guardar el PC depende de en que
--	seccion de la memoria nos encontremos. 
--	Un PC menor a la direccion de reset corresponde a la seccion de instrucciones de 
--	excepciones, entonces se activa o desactiva la escritura en registro segun sea 
--	necesario.
with pulsador select
	RegWriteFinal <= menorPC when '1', RegWrite when others;

-----------------------------------------------------------------------------------------

-- Instanciacion de los componentes

inst_ControlUnit: ControlUnit
	port map(
		op => op_final,
		funct3 => instruction(14 downto 12),
		funct7b5 => instruction(30),
		IRQ => pulsador,	
		ResultSrc => ResultSrc,
		MemWrite => MemWrite,
		Zero => Zero,
		ALUSrc => ALUSrc,
		RegWrite => RegWrite,
		PCSrc => PCSrc,
		Reg => Reg,
		ImmSrc => ImmSrc,
		ALUControl => ALUControl
	);


inst_ProgramCounter: ProgramCounter
	port map(
		clk => clk,
		reset => reset,
		PCnext => PCNext,
		PC => PC
	);
	
inst_ComparadorPC: comparador -- Compara
	port map(
		a => direccion_reset,
		b => PC,
		menor => menorPC
	);
	
inst_Adder: Adder
	port map(
		a => PC,
		b => X"00000004",
		y => PCPlus4
	);

inst_Jump: Adder
	port map(
		a => PCfuente,
		b => ImmExtDoble,
		y => PCTarget
	);

inst_MuxPC: Mux2
	port map(
		d0 => PCPlus4,
		d1 => PCTargetFinal,
		s => PCSrc,
		y => PCNext
	);
	
	
inst_MuxFuentePC: Mux2
	port map(
		d0 => PC,
		d1 => RD1, -- Registro elegido de donde saldra el nuevo PC en jalr
		s => Reg,
		y => PCfuente
	);

inst_IMem: IMem
	port map(
		addr => PC,
		instruction => instruction
	);


inst_RegFile: RegFile
	port map(
		clk => clk,
		WE => RegWriteFinal,
		A1 => instruction(19 downto 15),
		A2 => instruction(24 downto 20),
		A3 => A3, 
		WD => WD_regfile,
		RD1 => RD1,
		RD2 => RD2
	);
	
inst_Extend: Extend
	port map(
		instr => instruction(31 downto 0), 
		immsrc => ImmSrc,
		ImmExt => ImmExt,
		ImmExtDoble => ImmExtDoble
	);
	
	
inst_MuxALU: Mux2
	port map(
		d0 => RD2,
		d1 => ImmExt,
		s => ALUSrc,
		y => SrcB
	);
	
inst_ALU: ALU
	port map(
		SrcA => RD1,
		SrcB => SrcB,
		ALUControl => ALUControl,
		ALUResult => ALUResult,
		Zero => Zero
	);

inst_DMem: DMem
	port map(
		clk => clk,
		WE => MemWrite,
		addr => AluResult,
		WD => RD2,
		RD => RD,
		valor_led => led_activado
	);


inst_MuxSavePC: Mux2
	port map(
		d0 => PCPlus4,
		d1 => PC,
		s => pulsador,
		y => PCSave
	);

inst_MuxWD: Mux3
	port map(
		d0 => ALUResult,
		d1 => RD,
		d2 => PCSave,
		s => ResultSrc,
		y => WD_regfile
	);

salida1 <= PCNext;
salida2 <= WD_regfile;

end architecture;