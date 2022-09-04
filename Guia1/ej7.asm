.data 
valor: .word 0x805215C9 # posición 0 de la dirección inicial del data segment tiene vaor 0x805215C9.
.text
	la s0,valor # setea s0 con la dirección de la etiqueta "valor". en este caso, la inicial.
	
	#lhu a1,0(s0) # 0x00008052
	#lhu a2,2(s0) # 0x000015c9
	
	lh a1,0(s0) # 0x000015c9
	lh a2,2(s0) # 0xffff8052