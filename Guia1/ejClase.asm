.text
# 0xFEEDA + 0x987 --> complemento a 1 del segundo --> 0xFEEDA + 0x678 ---> complemento a dos ---> 0xFEEDB + -0x679
	lui s2,0xFEEDB 
	addi s2,s2,-0x679 # complemento a 2   
	
	# 1001 1000 0111 -> 987
	# 0110 0111 1000 -> 678 ------------> 0110 0111 1001 -> 679
	 
	# desde 800 en adelante tengo que hacer comp. a dos porque lo toma como negativo, ya que el primer bit es 1.
	# los campos inmediatos no son unsigned. ver que el siguiente ejemplo funciona sin necesidad del comp:
	
	lui s2,0xFEEDA
	addi s2,s2,0x679 # no tiene problema porque no lo toma como negativo: 679(10) = 0110 0111 1001. Empieza con 0,
			 # entonces lo toma como positivo (lo que es) y suma sin problemas.