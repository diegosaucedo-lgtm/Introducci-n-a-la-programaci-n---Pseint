Algoritmo ejercicio_03
	
	//	Dada una matriz de orden n * m (donde n y m son valores ingresados por el usuario) realizar
	//	un subprograma que llene la matriz de numeros aleatorios. Despues, crearemos otro subprograma
	//	que calcule y muestre la suma de los elementos de la matriz. Mostrar la matriz y los resultados
	//	por pantalla.
	
	Definir m,f,c Como Entero
	
	Escribir "Ingresa el número de filas para la matriz: "
	Leer f
	
	Escribir "Ingresa el número de columnas para la matriz: "
	Leer c
	
	Dimension m[f,c]
	
	llenarMatriz(f,c,m)
	
	sumaMatriz(m,f,c)
	
FinAlgoritmo

SubProceso llenarMatriz(f,c,m)
	Definir i,j Como Entero
	
	
	Para i=1 Hasta f Con Paso 1 Hacer
		Para j=1 Hasta c Con Paso 1 Hacer
			m[i,j]=Aleatorio(1,25)
			Escribir "El valor de la celda [",i,",",j,"] de la matriz es ",m[i,j]
		Fin Para
	Fin Para
	
FinSubProceso

SubProceso sumaMatriz(m,f,c)
	Definir sum,i,j Como Entero
	
	sum=0
	Para i=1 Hasta f Con Paso 1 Hacer
		Para j=1 Hasta c Con Paso 1 Hacer
			sum=sum+m[i,j]
		Fin Para
	Fin Para
	
	Escribir "La suma de los valores es ",sum
	
FinSubProceso
