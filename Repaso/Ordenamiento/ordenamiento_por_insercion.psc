Algoritmo ordenamiento_por_insercion
	
	
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
	ordenamientoInsercion_Asc(arreglo,t)
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

SubProceso ordenamientoInsercion_Asc(arreglo,t)
	Definir i,j,temp Como Entero
	
	Para i=1 Hasta t Con Paso 1 Hacer
		temp=arreglo[i]
		j=i-1
		Mientras j>=1 y temp<arreglo[j] Hacer
			arreglo[j+1]=arreglo[j]
			j=j-1
		Fin Mientras
		arreglo[j+1]=temp
	Fin Para
	
FinSubProceso
