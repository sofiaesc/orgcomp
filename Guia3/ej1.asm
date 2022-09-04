.text
	ori t0,zero,0x476 
	ori t1,zero,0x552
	ori t2,zero,0x22
	
	#slt t6,t1,t0
	#beq t6,zero,no1  # si es verdadero, salta a la etiqueta no1 
	blt t0,t1,no1
	#slt t6,t2,t0	 # coloca un boolean en t0 
	#beq t6,zero,no2 # si es verdadero, salta a la etiqueta no2
	blt t0,t2,no2
	or a0,zero,t0
	j fin # break
 no2:	or a0,zero,t2
 	j fin # break
 no1:	slt t6,t2,t1
 	beq t6,zero,no2
 	or a0,zero,t1
 fin:
 	ori a7,x0,10
 	ecall