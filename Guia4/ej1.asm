.text
	# Cargar un valor en a0 y asignarle un 10 a s1 si es par o un 20 si es impar.
	
	ori a0,zero,37 # Cargo un valor en a0
	
	# Reviso si es par o impar.
	ori a1,zero,2
	rem t0,a0,a1
	ori t1,zero,1
	beq t0,t1,impar
par:
	ori s1,zero,10
	beq t0,t0,fin
impar:
	ori s1,zero,20
fin: