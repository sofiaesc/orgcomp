.text
	ori t1,zero,36 # inicializo
	
	# --------------CON CICLOS--------------
	addi t2,zero,61
	addi t3,zero,1
do:	add a0,a0,t1
	sub t2,t2,t3
	bne t2,zero,do
fin:
			
	# --------------CON DESPLAZAMIENTOS-------------- 
	# 61 = 2*5 + 2*4 + 2*3 + 2*2 + 2*0 --> más operaciones
	slli s2,t1,5 # 32
	slli s3,t1,4 # 16
	slli s4,t1,3 # 8
	slli s5,t1,2 # 4
	add a0,s2,s3
	add a0,a0,s4
	add a0,a0,s5
	add a0,a0,t1
	
	# 61 = 2*6 - 2*1 - 1 --> más eficiente 
	slli s2,t1,6 # 64
	slli s3,t1,1 # 2
	sub a0,s2,s3 # 1
	sub a0,a0,t1
	
																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																																		#																																																																																																																				
