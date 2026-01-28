Algoritmo ejercicio_02
	
//	Escribir un programa que realice la búsqueda lineal de un número entero ingresado por el
//	usuario en una matriz de 5x5, llena de números aleatorios y devuelva por pantalla las coordenadas
//	donde se encuentra el valor, es decir en que fila y columna se encuentra. En caso de no
//	encontrar el valor dentro de la matriz se debe mostrar un mensaje.
	
	Definir m,i,j,n,cont Como Entero
	Dimension m[5,5]
	
	Para i=1 Hasta 5 Con Paso 1 Hacer
		Para j=1 Hasta 5 Con Paso 1 Hacer
			m[i,j]=Aleatorio(1,20)
			Escribir "El valor de la celda [",i,",",j,"] de la matriz es ",m[i,j]
		Fin Para
	Fin Para
	
	Escribir "Ingresa un numero entero: " Sin Saltar
	Leer n
	
	cont=0
	Para i=1 Hasta 5 Con Paso 1 Hacer
		Para j=1 Hasta 5 Con Paso 1 Hacer
			Si n=m[i,j] Entonces
				Escribir "El valor se halla en la fila ",i," y en la columna ",j," de la matriz"
			SiNo
				cont=cont+1
				Si cont=25 Entonces
					Escribir "El valor no se halla en ninguna celda"
				Fin Si
			Fin Si
		Fin Para
	Fin Para
	
	
	
	
	
FinAlgoritmo
