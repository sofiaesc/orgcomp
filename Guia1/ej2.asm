.text
	lui a1, 0x10010 # Setea a1 con 0x10010 y el resto de números 0.
	lw t0, 0(a1) # Setea t0 con el valor 0 (posición 1 de Data Segment) de a1.
	lw t1, 4(a1) # Setea t1 con el valor 4 (posición 2 de Data Segment) de a1.
	lw t1, 8(a1) # Setea t2 con el valor 8 (posición 3 de Data Segment) de a1.