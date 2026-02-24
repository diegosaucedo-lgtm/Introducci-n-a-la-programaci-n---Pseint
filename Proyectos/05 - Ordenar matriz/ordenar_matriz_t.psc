Algoritmo ordenar_matriz
	Definir matriz, arreglo Como Entero
	Definir i, j, f, c, k, m Como Entero
	Escribir 'Bienvenido al programa de ordenamiento de matriz, estimado usuario'
	Esperar 5 Segundos
	Limpiar Pantalla
	Escribir 'Ingrese el tamaño de la matriz, por favor'
	Esperar 5 Segundos
	Limpiar Pantalla
	Escribir 'Número de filas: '
	Leer f
	Escribir 'Numero de columnas: '
	Leer c
	Dimensionar matriz(f,c)
	Dimensionar arreglo(c*f)
	Esperar 5 Segundos
	Limpiar Pantalla
	Escribir 'Ingresa los valores de la matriz: '
	k <- 0
	Para i<-1 Hasta f Con Paso 1 Hacer
		Para j<-1 Hasta c Con Paso 1 Hacer
			Escribir 'Matriz[', i, ',', j, '] es 'Sin Saltar
			Leer matriz[i,j]
			k <- k+1
			arreglo[k] <- matriz[i,j]
			Limpiar Pantalla
		FinPara
	FinPara
	Escribir 'Matriz inicial'
	imprimirMatriz(matriz,f,c)
	// Las variables dentro de los subprocesos que sean modificadas dentro ellas
	// tambien conservan los cambios dentro del algoritmo principal
	ordenamientoArreglo(arreglo,f,c)
	llenarMatriz(matriz,f,c,arreglo)
	Escribir ''
	Escribir 'Matriz ordenada de menos a myos'
	imprimirMatriz(matriz,f,c)
	// Esperar 6 Segundos
	// Limpiar Pantalla
FinAlgoritmo

Función llenarMatriz(matriz,f,c,arreglo)
	Definir i, j, k Como Entero
	k <- 0
	Para i<-1 Hasta f Con Paso 1 Hacer
		Para j<-1 Hasta c Con Paso 1 Hacer
			k <- k+1
			matriz[i,j]<-arreglo[k]
		FinPara
	FinPara
FinFunción

Función ordenamientoArreglo(arreglo,f,c)
	// Ordenamiento por metodo burbuja
	// De menor a mayor
	Definir i, j, aux, k, t Como Entero
	t <- f*c
	Para j<-t Hasta 1 Con Paso -1 Hacer
		Para i<-1 Hasta j-1 Con Paso 1 Hacer
			Si arreglo[i]>arreglo[i+1] Entonces
				aux <- arreglo[i]
				arreglo[i] <- arreglo[i+1]
				arreglo[i+1]<-aux
			FinSi
		FinPara
	FinPara
FinFunción

Función imprimirMatriz(matriz,f,c)
	Definir m, n Como Entero
	Para m<-1 Hasta f Con Paso 1 Hacer
		Para n<-1 Hasta c Con Paso 1 Hacer
			Escribir ' ', matriz[m,n], ' 'Sin Saltar
		FinPara
		Escribir ''
	FinPara
FinFunción
