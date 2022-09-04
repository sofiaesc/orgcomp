.text
	lui t0, 0x12345 # setea t0 con 0x12345 + ceros.
	sw t0,(sp) # guarda el valor de t0 en la última posición (1c) de la dirección sp.
	lui a1,0x10010 # setea t1 con 0x10010 + ceros.
	lw t1,(sp) # copia en t1 el valor de la dirección inicial.
	sw t1,(a1) # guarda el valor de t1 en la primera posición (0) de la dirección a1.
	
	li a7,10 # setea a7 como 0000000a (10).
	ecall
