.text
	# Direcciones de memoria:
	ori t1,zero,12
	ori t2,zero,6
	ori t3,zero,6
	
	# Constantes:
	ori a0,zero,5
	ori a1,zero,6
	ori a2,zero,10
	ori a3,zero,30
	
	# Resultados:
	# s2 -> menor que 5
	# s3 -> t1 igual a 5 y t2 igual a t3
	# s4 -> t1 distinto de t2 y t1 distinto de t3
	# s5 .> mayor que 6
	# s6 -> mayor que 10 y menor que 30
	
ComparacionA: # t1 < 5
	blt t1,a0,Menor
	
ComparacionB: # t1 == 5 && t2 == t3
	beq t1,a0,IgualA5
	
ComparacionC: # t1 != t2 || t1 != t3
	bne t1,t2,NoIguales
	bne t1,t3,NoIguales
	
ComparacionD: # t1 > 6
	bge t1,a1,MayorIgual6
	
ComparacionE: # t1 > 10 && t1 < 30
	bge t1,a2,MayorIgual10
	beq s5,s5,Fin
	
Menor:
	ori s2,s2,0x1
	beq s2,s2,ComparacionB

IgualA5:
	beq t2,t3,Iguales
	beq s3,s3,ComparacionC

Iguales:
	ori s3,s3,0x1
	beq s3,s3,ComparacionC

NoIguales:
	ori s4,s4,0x1
	beq s4,s4,ComparacionD
	
MayorIgual6:
	bne t1,a1,Mayor6
	beq s5,s5,ComparacionE
	
Mayor6:
	ori s5,s5,0x1
	beq s5,s5,ComparacionE
	
MayorIgual10:
	bne t1,a2,Mayor10
	beq s6,s6,Fin

Mayor10:
	blt t1,a3,MenorA30
	beq s6,s6,Fin		
		
MenorA30:
	ori s6,s6,0x1
	beq s6,s6,Fin
	
Fin:
