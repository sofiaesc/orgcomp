.text
	lui t1,10
	lui t2,10

# s2: iguales
# s3: menor o igual
# s4: mayor o igual
# s5: desiguales
# s6: menor
# s7: mayor

ComparacionA: # t1 == t2
	beq t1,t2,Igual 
	
ComparacionB: # t1 <= t2
	beq t1,t2,MenorIgual
	blt t1,t2,MenorIgual
	
ComparacionC: # t1 >= t2
	bge t1,t2,MayorIgual

ComparacionD: # t1 != t2
	bne t1,t2,Desigual

ComparacionE: # t1 < t2
	blt t1,t2,Menor

ComparacionF: # t1 > t2
	bge t1,t2,Mayor1
	beq t1,t1,Fin

Igual: 
	ori s2,s2,0x1
	beq s2,s2,ComparacionB
	
MenorIgual:
	ori s3,s3,0x1
	beq s3,s3,ComparacionC
	
MayorIgual:
	ori s4,s4,0x1
	beq s4,s4,ComparacionD

Desigual:
	ori s5,s5,0x1
	beq s5,s5,ComparacionE

Menor:
	ori s6,s6,0x1
	beq s6,s6,ComparacionF
	
Mayor1:
	bne t1,t2,Mayor2
	beq s7,s7,Fin

Mayor2: 
	ori s7,s7,0x1
	beq s7,s7,Fin
	
Fin: