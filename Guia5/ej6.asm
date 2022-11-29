.data
	V: .word 1 2 3 4 5 6 7 8 9 10
.text
	la a0,V
	la t6,V
	
	# jal invertirCon 
	jal invertirPila
	
	li a7,10
	ecall	
	
invertirCon:
	ori t1,zero,0
	ori t2,zero,0
ciclo:	slti t1,t0,10
	beq t1,zero,fin
fin:
	ret

invertirPila:
	ori t1,zero,0
	ori t2,zero,0
ciclo2:	slti t0,t1,10
	beq t0,zero,ciclo3
	lw a1,(a0)
	sw a1,(sp)
	addi sp,sp,-4
	addi a0,a0,4
	addi t1,t1,1
	beq zero,zero,ciclo2
ciclo3: slti t0,t2,10
	beq t0,zero,fin2
	addi sp,sp,4
	lw a2,(sp)
	sw a2,(t6)
	addi t6,t6,4
	addi t2,t2,1
	beq zero,zero,ciclo3
fin2: 	ret
