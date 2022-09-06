.data
	V: .word 4 2 1
.text
	la a0,V
	lw t0,(a0)
	addi a0,a0,4
	lw t1,(a0)
	addi a0,a0,4
	lw t2,(a0)
	
	bgt t0,t1,Comparacion1
	bgt t0,t2,Comparacion2
	or s0,zero,t0
	beq zero,zero,fin
Comparacion2:
	or s0,zero,t2
	beq zero,zero,fin
Comparacion1:
	bgt t1,t2,Comparacion2
	or s0,zero,t1
fin:
	addi a0,a0,4
	sw s0,(a0)