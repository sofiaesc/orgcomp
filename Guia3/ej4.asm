.data
dato1: .word 20
dato2: .word -40
res: .space 4 # toma un espacio de 4 bytes y los reserva, sin saber qué va a ir ahi.
.text
	lw s8,dato1 # setea s8 como 20
	lw s9,dato2 # setea s9 como -40
	and t0,t0,zero # 0 porque compara con el 0.
	and t1,t1,zero # 0 porque compara con el 0.
	bge s8,s9,salto # 20 >= -40
	ori t1,t1,1 
salto:	or t0,t0,t1 # t0 = t1
	sw t0,res,t6 # res = t0.
	nop
	nop

