.text
	# poner en 1 los bits 10, 11 y 15 de t0:
	
	# seteo un valor inicial que quiera
	ori t0, zero, 0x7f2 # 0000 0000 0000 0000 0111 1001 1111 0010
	slli t0, t0, 4 # 0000 0000 0000 0000 0111 1111 0010 0000
	ori t0, t0, 0x002 # 0000 0000 0000 0000 0111 1111 0010 0010
	 
	# debo obtener el valor 0000 0000 0000 0000 0111 0011 0010 0010 = 0x00007322
	
	# compuerta AND con la máscara 1111 1111 1111 1111 0111 0011 1111 1111
	# complemento a 2 de la máscara: 0000 0000 0000 0000 1000 1100 0000 0001
	ori t1, zero, 0x8C # 1000 1100
	slli t1, t1, 8 # 1000 1100 0000 0000
	ori t1, t1, 0x001 # 1000 1100 0000 0001
	xori t1, t1, -2 # resto dos

	# aplico AND con la máscara
	and t0, t0, t1