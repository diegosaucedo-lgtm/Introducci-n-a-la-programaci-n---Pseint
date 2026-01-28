Algoritmo Procedimientos_06
	
	
//	Realizar un subproceso que reciba una letra y muestre un mensaje si esa letra esta entre las
//	letras "M" y "T". Recordar que Pseint le da un valor numérico a cada letra a través del Código
//	Ascii, lo que nos deja usar operadores relacionales con letras y cadenas.
	
	letra()
	
FinAlgoritmo


SubProceso letra()
	Definir letras Como Caracter
	
	Escribir "Ingresar una letra: "
	Leer letras
	
	letras=Mayusculas(letras)
	
	Si letras>"M" y letras<"T" Entonces
		Escribir letras, " está entre la letras M y T"
	SiNo
		Escribir letras, " no está entre la letras M y T"
	Fin Si
	
	
FinSubProceso
