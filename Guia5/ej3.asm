.data 
	V: .word 20 23 43 45 5 2 2 4 7 8
	n: .word 10
	pares: .word 0
.text
	la a0,V # obtengo vector por referencia
	lw a1,n # obtengo numero de elementos del vector
	la a2,pares # obtengo la dirección de memoria para guardar resultado
	ori s3,zero,2 # me guardo un 2 para diidir después
	jal cuantospares
	li a7,10
	ecall
cuantospares:	
ciclo:
	slt t1,t0,a1 # el contador es menor que n?
	beq t1,zero,fin # si el contador es mayor o igual que n, entonces termina el bucle.
	lw s0,(a0) # guarda en s0 el contenido de la dirección de memoria en a0
	rem s0,s0,s3
	bne s0,zero,sigue # si no es igual a 0, sigue
	addi s1,s1,1 # si es igual a 0, cuenta +1 a las coincidencias.
sigue:
	addi t0,t0,1 # contador +1 del bucle
	addi a0,a0,4 # +4 para ir a la siguiente posición de memoria.
	beq zero,zero,ciclo # vuelve al bucle.
fin:
	sw s1,(a2) # guardo resultado
	ret

