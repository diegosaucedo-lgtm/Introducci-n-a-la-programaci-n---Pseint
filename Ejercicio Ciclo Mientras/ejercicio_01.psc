Algoritmo ejercicio_01
	
//	Escriba un programa que valide si una nota está entre 0 y 10, sino está entre 0 y 10 la nota
//			se pedirá de nuevo hasta que la nota sea correcta.
	
	
	Definir n Como Entero
	
	Escribir "Ingresa un numero: "
	Leer n 
	
	Mientras n>=11 o n<0 Hacer
		Escribir "Ingresa un nuevo numero"
		Leer n 
	Fin Mientras
	
	Escribir "La nota ", n, "está entre 0 y 10"
	
FinAlgoritmo
