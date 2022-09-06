.data
	V: .word 1 2 3 4 500 6 700 800 9 10 11 12 13 14 15 16 17 18 19 20
.text
	la t0,V
	ori s1,zero,400
inicio:	slti t1,s0,20 # contador menor que 20?
	beq t1,zero,fin # si el contador es igual a 20, finaliza el bucle.
	lw a1,(t0) # guarda el contenido de t0 en a1.
	blt a1,s1,menor400 # si a1 es menor que 400, va al branch menor400.
	addi a0,a0,1 # suma el contador de coincidencias
	addi s0,s0,1 # suma el contador del bucle
	addi t0,t0,4 # suma para ir a la siguiente posición del vector.
	beq zero,zero,inicio # continua el bucle
menor400:
	addi s0,s0,1 # suma el contador del bucle
	addi t0,t0,4 # suma para ir a la siguiente posición del vector.
	beq zero,zero,inicio # continúa el bucle
fin: