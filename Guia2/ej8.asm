.text
	lui t0,0x1 # a
	lui t1,0x2 # b
	lui t2,0x3 # c
	lui t3,0x4 # d
	lui t4,0x5 # e
	# t5 y t6 son las direcciones auxiliares para los calculos.
	
	# a = b;
	add t1,t0,zero
	
	# a = b + c;
	add t0,t1,t2
	
	# a = a + 1;
	addi t0,t0,1
	
	# a = c + 2;
	addi t0,t2,2
	
	# a = b + c + d + e;
	add t0,t1,t2 # a = b + c
	add t0,t3,t4 # a = b + c + d + e
	
	# a = e - c;
	sub t0,t4,t2
	
	# a = c + (b - d);
	sub t5,t1,t3
	add t0,t2,t5
	
	# a = (b + c) - (d + e);
	add t0,t1,t2
	add t5,t3,t4
	add t0,t0,t5
	
	# a = b * c;
	mul t0,t1,t2
	
	# a = b / c;
	div t0,t1,t2
	
	# a = 3 * e;
	lui t5,0
	addi t5,t5,3
	mul t0,t5,t4
	
	# a = (b - c) * (d - e);
	sub t5,t1,t2
	sub t6,t3,t4
	mul t0,t5,t6
	
	# a = b * c * d;
	mul t0,t1,t2
	mul t0,t0,t3
	
	# a = (b + c) * (d / e);
	add t5,t1,t2
	div t6,t3,t4
	mul t0,t5,t6