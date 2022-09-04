.data
elemento : .word 0x4E1C532D # setea la primera posición de la dirección inicial como 0x4E1C532D
			    # y le pone nombre de variable a este valor: "elemento".
.text
	lw t1,elemento # setea el valor de t1 a la dirección dada por la etiqueta "elemento". 