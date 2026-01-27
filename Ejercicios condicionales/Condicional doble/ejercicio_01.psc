Algoritmo ejercicio_01
	
//	Realiza un programa que sólo permita introducir los caracteres "S"y "N". Si el usuario
//		ingresa alguno de esos dos caracteres se deberá de imprimir un mensaje por pantalla que
//		diga "CORRECTO", en caso contrario, se deberá imprimir "INCORRECTO".
//	
	
	Definir letra Como Caracter
	
	Escribir "Ingresa una letras: "
	Leer letra
	
	Si letra="S" o letra="N" Entonces
		Escribir "Correcto"
	SiNo
		Escribir "Incorrecto"
	Fin Si
	
FinAlgoritmo
