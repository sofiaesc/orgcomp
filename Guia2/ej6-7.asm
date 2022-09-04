.text
	lui t0,0
	addi t0,t0,3
	add t0,t0,t0 # multiplica por 2.
	add t0,t0,zero # no suma nada, la dirección zero siempre guarda el cero.