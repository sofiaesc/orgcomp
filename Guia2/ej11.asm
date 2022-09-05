.text
	# shift a la izquierda multiplica,
	# shift a la derecha divide.
	
	# multiplicar por 17:
	ori a0,zero,3 # numero inicial n
	slli a1,a0,4 # (2*4)*n = 16*n
	add a1,a1,a0 # (2*4 + 1)*n = 17*n

	# multiplicar por 24:
	ori a0,zero,5 # número inicial n.
	slli a1,a0,4 # (2*4)*n = 16*n
	slli a2,a0,3 # (2*3)*n = 8n --> a2 como auxiliar.
	add a1,a1,a2 # (2*4 + 2*4)*n = (16 + 8)*n = 24*n ---> resultado en a0.