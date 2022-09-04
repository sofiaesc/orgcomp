.data
valor: .word 0 # setea el valor de la primera posición de la dirección inicial.
.text 
	lui t0,0x12345 # setea t0 con 0x12345 seguido por los ceros necesarios para completar hasta 32 bits.
	lui t1,0x345
	lui t2,0x5
	
	sw t0,valor,t6 # guarda el valor de t0 en la dirección dada por la etiqueta valor, usando t6 como dirección auxiliar. 
	
	la a7,valor # setea a7 con el valor de la dirección dada por la etiqueta valor.
	sw t1,4(a7) # guarda el valor de t1 en la posición 2 (valor 4) de a7.
	sw t2,8(a7) # guarda el valor de t2 en la posición 3 (valor 8) de a7.
