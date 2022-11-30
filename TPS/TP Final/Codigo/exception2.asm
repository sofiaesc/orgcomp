#	lui x5, x0, 63
	lw x6, 0(x0)	# Cargar el valor que lee el led, almacenado en la primera posicion de memoria.
	xori x6, x6, 1	# Invertir el primer bit
	sw x6, 0(x5)	# Guardar nuevamente en memoria para que el led lo lea.
