ori a0,zero,0
loop: slti a2,a0,30
	beq a2,zero,fin
	addi a0,a0,1
	beq x0,x0,loop
fin: