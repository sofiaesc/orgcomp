.text
	ori t0,zero,476 # t0: 476 --> 0x1DC
	ori t1,zero,0xFF # t1: 0xFF
	lui t2,1 # t2: 00001000
	ori t3,zero,4 # t3: 0x00000004 (4)
	lui t4,0xC3010 # t4: 0xC3010000
	
	# ROTACIONES:
	slli s0,t0,16 #  s0: 0x01dc000
	srai s1,t1,1 # s1: 0x7f --> 254
	srl s2,t4,t3 # s2: 0x00000000
	sra s3,t4,t3 # s3: 0x00000000
	slli s4,t3,1 # s4: 0x00000008 (8)
	add s4,s4,t3 # s4: 0x0000000c (12)
	sll s5,t0,s4 # s5: