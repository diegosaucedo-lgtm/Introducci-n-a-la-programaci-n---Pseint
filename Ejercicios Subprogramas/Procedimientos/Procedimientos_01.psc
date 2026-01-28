Algoritmo Procedimientos_01
	
//	Realizar un procedimiento que permita intercambiar el valor de dos variables de tipo entero.
//	La variable A, debe terminar con el valor de la variable B.
	
	
	Intercambio()
	
FinAlgoritmo


SubProceso Intercambio()
	
	Definir a,b,c Como Entero
	
	Escribir "Ingresa el primer número: "
	Leer a
	
	Escribir "Ingresa el segundo número: "
	Leer b
	
	Escribir "Números al inicio"
	Escribir "A: ",a
	Escribir "B: ",b
	
	c=a+b
	a=c-a
	b=c-b
	
	Escribir "Números al final"
	Escribir "A: ",a
	Escribir "B: ",b
	
	
FinSubProceso
