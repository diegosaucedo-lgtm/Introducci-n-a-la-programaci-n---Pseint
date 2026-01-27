Algoritmo ejercicio_04
	
//	Diseñe un algoritmo que lea un número de tres cifras y determine si es o no capicúa.
	
	Definir n Como Entero
	
	Escribir "Ingresa un numero de tres cifras: "
	Leer n 
	
	Si trunc(n/100)=n mod 10 Entonces
		Escribir "El numero es un capicúa"
	Fin Si
	
FinAlgoritmo
