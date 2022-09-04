.text
	# Asigna, pero lo hace en dos pasos: primero lui y después addi (es la alternativa 2, implícita).
	# li a0,0x111117ff
	# li a1,0x11111cab 
	
	# ALTERNATIVA 1: No da el mismo resultado.
	 lui a0,0x11111
	 ori a0,a0,0x7ff
	 lui a1,0x11112
	 ori a1,a1,-0x355 # da 0xfffffcab
	
	# ALTERNATIVA 2: La pseudoinstrucción li utiliza las instruccines lui y addi de esta forma.
	# lui a0,0x11111
	# addi a0,a0,0x7ff
	# lui a1,0x11112
	# addi a1,a1,-0x355
	
	# Complemento a dos de 0xCAB:
	# 0xCAB --> 1100 1010 1011
	# Complemento a 1 --> 0011 0101 0100 --> 354
	# Complemento a 2 --> 0011 0101 0101 --> 355
	
	# Tengo que sacar el complemento a 2 porque lo toma como negativo al empezar con bit 1. 
	# Campo inmediato no es unsigned. Primer bit es del signo, si es 1 es negativo y entonces va a restar.
	# Saco el complemento a 2 y resto este para que me haga la suma. Si lo sumara, me restaría.
