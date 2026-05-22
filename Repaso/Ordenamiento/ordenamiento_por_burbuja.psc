Algoritmo ordenamiento_por_burbuja
	Definir arreglo,t Como Entero
	Escribir Sin Saltar"Ingresa el tamaño del arreglo: "
	Leer t
	Dimension arreglo[t]
	
	leerArreglo(arreglo,t)
	
	Limpiar Pantalla
	
	Escribir "Los elementos del arreglo son: "
	mostrarArreglo(arreglo,t)
	Escribir ""
	Escribir "Los valores del arreglo ordenados de forma ascendente: "
	ordenamientoBurbuja_Asc(arreglo,t)
	mostrarArreglo(arreglo,t)
	
FinAlgoritmo 
SubProceso leerArreglo(arreglo,t)
	Definir i Como Entero
	Para i=1 Hasta t Con Paso 1 Hacer
		Limpiar Pantalla
		Escribir "Elemento del arreglo[",i,"] : " Sin Saltar
		Leer arreglo[i]
	Fin Para
FinSubProceso

SubProceso mostrarArreglo(arreglo,t)
	Definir i Como Entero
	Para i=1 Hasta t Con Paso 1 Hacer
		Escribir "Elemento del arreglo[",i,"] : ",arreglo[i] 
	Fin Para
FinSubProceso

SubProceso ordenamientoBurbuja_Asc(arreglo,t)
	Definir i,j,aux Como Entero
	
	Para j=t Hasta 1 Con Paso -1 Hacer
		Para i=1 Hasta j-1 Con Paso 1 Hacer
			Si arreglo[i]>arreglo[i+1] Entonces
				aux=arreglo[i]
				arreglo[i]=arreglo[i+1]
				arreglo[i+1]=aux
			Fin Si
		Fin Para
	Fin Para
FinSubProceso


