.text
	ori t0,zero,0x465 # t0: 0x465
	ori t1,zero,0x0ff # t1: 0x0ff
	ori t2,zero,0x123 # t2: 0x123
	and a0,t0,t2 # a0: 0x21
	andi a1,t1,0x35 # a1: 0x35 --> queda igual el q no es FF (neutro multiplicativo).
	or a2,t1,t0 # a2: 0x4ff --> queda igual el q no es 00 (neutro aditivo).
	ori a3,t1,1 # a3: 0x0ff 
	addi a4,t1,1 # a4: 0x100 
	xor a5,t0,t0 # a5: 0x000
	xori a6,t0,0x371 # a7: 0x714 
	xori a7,a6,0x371 # a8: 0x465
	not s1,a0 # s1: 0xffffffde