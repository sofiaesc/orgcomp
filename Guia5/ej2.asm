.data
valor1: .word 5
valor2: .word 9
.text
	# guardo los valores de las etiquetas en t0,t1
	la a0,valor1
	la a1,valor2
	# llamo a la función
	jal intercambio
	
	li a7,10
	ecall
# implementación de la función:
intercambio:
	lw t0,(a0)
	lw t1,(a1)
	add t2,zero,t0 # t2 como auxiliar para el swap.
	add t0,zero,t1 # intercambia t0 con t1.
	add t1,zero,t2 # intercambia t1 con t0 usando la auxiliar t2.
	sw t0,(a0)
	sw t1,(a1)
	ret