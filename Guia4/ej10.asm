.data
	V: .word 0x1 0x200 0x30 0x400 0x43 0x1 0x2 0x3 0x4 0x5 0x100 0x120 0x8 0x9 0x1 0x2 0x3 0x4 0x5 0x8 0x2 0x1 0x3 0x400 0x300 0x20 0x120 0x130 0x11 0x1
	A: .space 120
.text
	la t0,V
	la a0,A
	ori s0,zero,0x100
	ori s1,zero,0x200
ciclo:	slti t2,t1,30
	beq t2,zero,fin
	lw a1,(t0)
	blt a1,s0,continua
	bgt a1,s1,continua
	sw a1,(a0)
	addi a0,a0,4	
continua:
	addi t0,t0,4
	addi t1,t1,1
	beq zero,zero,ciclo
fin: