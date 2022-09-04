.data 
valor: .word 0x805215C9 # posición 0 de la dirección inicial del data segment tiene vaor 0x805215C9.
.text
	la s0,valor # setea s0 con la dirección de la etiqueta "valor". en este caso, la inicial.
	
	#lbu a1,0(s0) # setea a1 con el valor: 0x000000c9
	#lbu a2,1(s0) # setea a2 con el valor: 0x00000015
	#lbu a3,2(s0) # setea a3 con el valor: 0x00000052
	#lbu a4,3(s0) # setea a4 con el valor: 0x00000080
	
	lb a1,0(s0) # setea a1 con el valor: 0xffffffc9
	lb a2,1(s0) # setea a2 con el valor: 0x00000015
	lb a3,2(s0) # setea a3 con el valor: 0x00000052
	lb a4,3(s0) # setea a4 con el valor: 0xffffff80
	
