.data
	V: .word 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20
	result1: .word 0
	result2: .word 0
.text
	la a0,V
	la a1,result1 # menor
	jal conseguirmenor
	
	la a0,V
	la a2,result2 # mayor
	jal conseguirmayor
	
	li a7,10
	ecall

conseguirmenor: 	
	ori t1,zero,0
	ori s2,zero,0x7ff
ciclo: 	slti t0,t1,20
	beq t0,zero,fin
	lw t2,(a0)
	bgt t2,s2,mayor
	or s2,zero,t2
mayor:
	addi t1,t1,1
	addi a0,a0,4
	beq zero,zero,ciclo
fin:
	sw s2,(a1)
	ret
	
conseguirmayor:	
	ori t1,zero,0
	ori s3,zero,0
ciclo2:	slti t0,t1,20
	beq t0,zero,fin2
	lw t2,(a0)
	blt t2,s3,menor
	or s3,zero,t2
menor:
	addi t1,t1,1
	addi a0,a0,4
	beq zero,zero,ciclo2
fin2:
	sw s3,(a2)
	ret
