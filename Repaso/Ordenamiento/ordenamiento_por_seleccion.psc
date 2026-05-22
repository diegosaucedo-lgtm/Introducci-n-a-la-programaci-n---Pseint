Algoritmo ordenamiento_por_seleccion 
	
	
	// Este algoritmo consiste en 1. ubicar en todo el arreglo cual es el valor mayor o menor para empezar
	// a ordenar, luego 2. lo cambia de ubicacion con el primer o ultimo arreglo.Y así sucesivamente
	// hasta que el arreglo este ordenado
	
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
	ordenamientoSeleccion_Asc(arreglo,t)
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

SubProceso ordenamientoSeleccion_Asc (arreglo,t)
	Definir i,j,k,aux Como Entero
	Para i=1 Hasta t Con Paso 1 Hacer
		aux=arreglo[i]
		k=i
		Para j=i+1 Hasta t Con Paso 1 Hacer
			Si arreglo[j]<aux Entonces
				aux=arreglo[j]
				k=j
			Fin Si
		Fin Para
		arreglo[k]=arreglo[i]
		arreglo[i]=aux
	Fin Para
FinSubProceso






