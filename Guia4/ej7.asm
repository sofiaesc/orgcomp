# CUENTA CUANTAS VECES APARECE UN CARACTER EN UNA CADENA.
.data
cadena: .asciz "ORGANIZACIÓN DE LAS COMPUTADORAS CON RISC V" # escribe en la consola y guarda en Little Endian, 4 caracteres por dirección
	.align 2 # alinea la próxima palabra en el data segment.
cant:	.byte -1 # apunta a la dirección 0x10010030 (el +10 de 0x10010020 en el Data Segment)
	.align 2 # sin el align pone la A al lado del -1 (.) y no en la proxima dirección de memoria.
caract: .ascii "A" # apunta a la dirección 0x10010034
.text
	la a0,cadena # guarda la dirección de memoria de la etiqueta cadena en a0
	lb t1,caract # guarda el valor de la etiqueta caract en t1.
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