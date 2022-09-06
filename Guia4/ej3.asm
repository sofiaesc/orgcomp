.data
	V: .word 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 # inicializo el vector de 15 elementos.
	A: .space 60 # 15*4 = 60 --> 4 bytes por cada cosito.
.text
	la a0,V # guarda en a0 la dirección de la etiqueta V.
	la a1,A # guarda en a1 la dirección de la etiqueta A.
	ori t0,zero,0 # guarda 0 en t0.
ciclo: slti t6,t0,15 # si t6 es menor que 15, setea en 1. sino, setea en 0.
	beq t6,zero,fin # cuando t0 supera 15 (t6 = 0), termina el bucle y se va al fin.
	lw t1,(a0) # guarda el contenido de a0 en t1.
	sw t1,(a1) # guarda el contenido de t1 en a1.
	addi a0,a0,4 # suma 4 a a0 (4 bytes, siguiente dirección de memoria).
	addi a1,a1,4 # suma 4 a a1 (4 bytes, siguiente dirección de memoria).
	addi t0,t0,1 # suma 1 a t0 para la comparación al principio del bucle.
	j ciclo # vuelve al ciclo
fin:	addi a7,zero,10  
	ecall 
	
