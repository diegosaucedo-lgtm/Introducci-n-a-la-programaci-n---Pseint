Algoritmo ejercicio_01
	
//	Realizar un programa que rellene una matriz de 3x3 con 9 valores ingresados por el usuario y
//	los muestre por pantalla.
	
	
	Definir m,i,j Como Entero
	Dimension m[3,3]
	
	
	Para i=1 Hasta 3 Con Paso 1 Hacer
		Para j=1 Hasta 3 Con Paso 1 Hacer
			Escribir "Ingresa el valor a la matriz: " Sin Saltar
			Leer m[i,j]
			Escribir "El valor de la celda [",i,",",j,"] de la matriz es ",m[i,j]
		Fin Para
	Fin Para

	
	
	
FinAlgoritmo
