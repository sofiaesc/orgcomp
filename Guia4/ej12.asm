.data
	cadena: .asciz "Holaaaa mundo"
	caract: .byte 'a'
		.align 2
	cant: .word 0
.text
	la a0,cadena
	lb t1,caract
	ori a1,zero,0   # contador
ini:	lb t0,0(a0) # guarda el primer valor de a0 en t0.
	bne t0,t1,distin # si no son iguales t0 y t1, va a distin.
	addi a1,a1,1 # suma 1 a a1 (contador)
distin: beq t0,zero,fin # si t0 es igual a 0, entonces termina.
	addi a0,a0,1 # suma 1 a 1 (contador)
	j ini # vuelve al bucle.
fin:	sw a1,cant,t6 # guarda el contenido de a1 en la dirección de memoria de cant, usando t6 como auxiliar.
	la a0,cadena # guarda la dirección de memoria de la etiqueta cadena en a0.
	li a7,4 
	ecall
	
	ori a7,zero,10
	ecall