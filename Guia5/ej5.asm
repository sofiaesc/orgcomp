.data 
	V: .word 1 2 3 4 5 6
	n: .word 6
	promedio: .word 0
.text
	la a0,V # obtengo vector por referencia
	lw a1,n # obtengo numero de elementos del vector
	la a2,promedio # obtengo la dirección de memoria para guardar resultado
	jal calcularpromedio
	li a7,10
	ecall
	
calcularpromedio:
	ori s1,zero,0 # seteo en 0 la variable para la suma por si uso muchas veces la subrutina
ciclo:
	slt t1,t0,a1 # el contador es menor que n?
	beq t1,zero,fin # si el contador es mayor o igual que n, entonces termina el bucle.
	lw s0,(a0) # guarda en s0 el contenido de la dirección de memoria en a0
	add s1,s1,s0 # agrega valor a la suma general
	addi a0,a0,4 # pasa a la siguiente posicion de memoria (proximo elemento del vector)
	addi t0,t0,1 # cuenta +1 al contador.
	beq zero,zero,ciclo
fin:
	div s3,s1,a1 # divido suma total por numero de elementos
	sw s3,(a2) # guardo resultado
	ret
