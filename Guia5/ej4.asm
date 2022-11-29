.data 
	C1: .asciz "hol"
	C2: .asciz "hola"
	longitud1: .word 0
	longitud2: .word 0
	maslargo: .word 0
.text
	la a0,C1 # obtengo vector por referencia
	la a1,longitud1
	la a3,maslargo
	
	jal cuantoscaracteres # obtengo longitud de la primera cadena
	or s2,zero,s1 # guardo longitud de la primera cadena en otra dirección de memoria
	
	la a0,C2 
	la a1,longitud2
	jal cuantoscaracteres # obtengo longitud de la segunda cadena
	
	jal cualesmayor # comparo las longitudes obtenidas
	sw s3,(a3)
	li a7,10
	ecall
	
cuantoscaracteres:
	ori s1,zero,0
ciclo:
	lb s0,(a0) # guarda en s0 el contenido de la dirección de memoria en a0
	beq s0,zero,fin # si no es igual a 0, sigue
	addi s1,s1,1 # cuenta +1 a la longitud.
	addi a0,a0,1 # avanza al siguiente caracter
	beq zero,zero,ciclo
fin:
	sw s1,(a1) # guardo resultado
	ret

cualesmayor:
	slt s3,s1,s2 # caso primera cadena mayor: s3 = 1
	beq s3,zero,segundomayor
	ret
segundomayor:
	ori s3,zero,2
	ret
