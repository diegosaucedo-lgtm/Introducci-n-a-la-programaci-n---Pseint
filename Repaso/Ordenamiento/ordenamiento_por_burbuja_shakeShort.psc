Algoritmo ordenamiento_por_burbuja_shakeShort
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
	ordenamientoShakeShort_Asc(arreglo,t)
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

SubProceso ordenamientoShakeShort_Asc(arreglo,t)
	Definir i,izq,der,k,aux Como Entero
	
	izq=2
	der=t
	k=t
	
	Mientras der>=izq Hacer
		//Etapa 1
		Para i=der Hasta izq Con Paso -1 Hacer
			Si arreglo[i-1]>arreglo[i] Entonces
				aux=arreglo[i-1]
				arreglo[i-1]=arreglo[i]
				arreglo[i]=aux
				k=i
			Fin Si
		Fin Para
		izq=k+1
		//Etapa 2
		Para i=izq Hasta der Con Paso 1 Hacer
			Si arreglo[i-1]>arreglo[i] Entonces
				aux=arreglo[i-1]
				arreglo[i-1]=arreglo[i]
				arreglo[i]=aux
				k=i
			Fin Si
		Fin Para
		der=k-1
	Fin Mientras

FinSubProceso


