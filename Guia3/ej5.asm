.data
dato1: .word 87 #
dato2: .word 13 # d
res: .space 4 # 6
mod: .space 4 # 9

.text
	lw t1,dato1
	lw t2,dato2
	and a0,zero,zero
	and a1,zero,zero
if:	beq t2,zero,endif # 13 == 0?, para no dividir por 0.
then:	div a0,t1,t2 # 6 (trunca)
	rem a1,t1,t2 # 9
endif:	sw a0,res,t0
	sw a1,mod,t0
	nop