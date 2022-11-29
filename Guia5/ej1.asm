.text
	# MECANISMO DE INTERRUPCIÓN BASICAMENTE
	# inicializo a0, a1, a2
	ori a0,zero,12
	ori a1,zero,7
	ori a2,zero,35
	
	# guardo los valorse de a0, a1, a2 en posiciones de la sp
	addi sp,sp,-4
	sw a0,(sp)
	addi sp,sp,-4
	sw a1,(sp)
	addi sp,sp,-4
	sw a2,(sp)
	# addi sp,sp,-12
	# sw a0,0(sp)
	# sw a1,4(sp)
	# sw a2,8(sp)
	
	# le sumo cosas a los valores guardados en a0, a1, a2.
	add a0,a1,a2
	addi a1,a1,7
	addi a2,a2,-20
	
	# vuelvo a0, a1, a2 a su valor original guardado, previo a sumarle cosas
	lw a2,(sp)
	addi sp,sp,4
	lw a1,(sp)
	addi sp,sp,4
	lw a0,(sp)
	addi sp,sp,4
	# addi sp,sp,12
	# sw a0,0(sp)
	# sw a1,4(sp)
	# sw a2,8(sp)
	
	addi a7,zero,10
	ecall
	
	# a) a0: 0xc (12), a1: 0x7 (7), a2: 0x23 (23)
	
	# b) 0x7ffeff8 (-4). No se modifican los valores de a0, a1, a2 porque se guardan en memoria.
	
	# c) Los valores de a0, a1 y a2 se guardaron en (+18)sp, (+14)sp, (+10)sp respectivamente:
	#    a0: 0x7fffeff8, a1: 0x7fffeff4, a2: 0x7fffeff0.
	
	# d) a0: 0x2a (42), a1: 0xe (14), a2: 0xf (15)
	
	# e) sp tiene valor 0x7fffeffc (el inicial). a0, a1 y a2 vuelven a sus valores originales.
	#    a0: 0xc (12), a1: 0x7 (7), a2: 0x23 (23)
	
