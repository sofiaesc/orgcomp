# MODIFICA LOS CARACTERES 'A' POR 'x'.
.data
cadena: .asciz "ORGANIZACIÓN DE LAS COMPUTADORAS CON RISC V" 
	.align 2
cant:	.byte -1
	.align 2 
caract: .ascii "A"
	.align 2
reemp: .ascii "x"
.text
	la a0,cadena # guarda la dirección de memoria de la etiqueta cadena en a0
	lb t1,caract # guarda el valor de la etiqueta caract en t1.
	lb s0,reemp
ini:	lb t0,0(a0) # guarda el primer valor de a0 en t0.
	bne t0,t1,distin # si no son iguales t0 y t1, va a distin.
	sb s0,0(a0) # reemplaza 'A' por 'x' si son iguales.
distin: beq t0,zero,fin # si t0 es igual a 0, entonces termina.
	addi a0,a0,1 # suma 1 a 1 (contador)
	j ini # vuelve al bucle.
fin:	la a0,cadena # guarda la dirección de memoria de la etiqueta cadena en a0.
	li a7,4 
	ecall
	
	ori a7,zero,10
	ecall