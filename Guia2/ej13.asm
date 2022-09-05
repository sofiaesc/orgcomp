.text
	ori t0,zero,0x678 # numero random
	# 0xf = 0000 0000 0000 0000 0000 0000 0000 1111
	ori t0,t0,0xf # operacion OR con ambos
