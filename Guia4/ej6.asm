.data
	V: .word 1 2 3 4 5 6 7 8 9 10
.text
	la a0,V # Cargo la dirección de memoria de la etiqueta en a0.
ciclo:	slti t2,t0,10 # Contador < 10?
	beq t2,zero,fin # Contador = 10, termina el bucle.
	lw s0,(a0) # Cargo el valor de (a0) en s0.
	slli s0,s0,3 # Shift left 3 para multiplicar por 8 = 2^3
	sw s0,(a0) # Guardo de nuevo el valor multiplicado en (a0).
	addi a0,a0,4 # Sumo 4 para ir al siguiente valor del vector.
	addi t0,t0,1 # Sumo 1 para el contador.
	beq zero,zero,ciclo # Vuelvo al bucle.
fin: