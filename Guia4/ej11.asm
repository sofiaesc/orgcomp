.data 
	V: .word 20 30 40 50 40 0 0 0 10 5
	n: .word 10
	total: .word 0
.text
	la a0,total # guarda la dirección de total en a0
	la a1,V # guarda la dirección de V en a0
	la a2,n # guarda la dirección de n en a0
	lw a3,(a2) # guarda el valor de la dirección en a2 en a3
ciclo: 	slt t1,t0,a3 # el contador es menor que n?
	beq t1,zero,fin # si el contador es mayor o igual que n, entonces termina el bucle.
	lw s0,(a1) # guarda en s0 el contenido de la dirección de memoria en a1
	bne s0,zero,sigue # si no es igual a 0, sigue
	addi s1,s1,1 # si es igual a 0, cuenta +1 a las coincidencias.
sigue:
	addi t0,t0,1 # contador +1 del bucle
	addi a1,a1,4 # +4 para ir a la siguiente posición de memoria.
	beq zero,zero,ciclo # vuelve al bucle.
fin:
	sw s1,(a0) # pone en la dirección de memoria a0 el valor en s1.