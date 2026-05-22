
//Retirar un elemento de la pila (desapilar)
Funcion retiro <- metodoPop ( tope Por Referencia, pila )
	
	Definir retiro Como Entero
	Si tope>0 Entonces
		retiro=pila[tope]
		tope=tope-1
	SiNo
		retiro=0
	Fin Si
	
Fin Funcion

Algoritmo pilas
	
	//Estructuras de datos dinámicas
	//En ella, el tamaño de estructura no es fijo y puede modificarse durante las operaciones que se realizan
	// en ella. Están diseñadas para facilitarel cambio de etructuras de datos en el tiempo de ejecución
	//Ejemplos
	//1. Listas simples
	//2. Listas dobles
	//3. Vectores
	//4, Pilas -> se opera los datos desde la cima o el final de la lista
	//5. Colas
	
//Ejercicio
//	a. Un almacén tiene capacidad para apilar n contenedores. Cada contenedor tiene un número	
//	de identificación. Cuando se desea retirar un contenedor específico, deben retirarse
//	primero los contenedores que están encima de él y colocarlos en otra pila, efectuar el retiro
//	y regresarlos. Codifique los métodos Push y Pop para gestionar los contenedores.
	Definir num, numAuxiliar, pila, pilaAuxiliar, tope,topeAuxiliar, i, j, k, numId, identificacion, id Como Entero
	
	Escribir "Ingrese el número de contenedores:"
	Leer num 
	
	numAuxiliar=num-1
	tope=0
	topeAuxiliar=0
	Dimension pila[num]
	Dimension pilaAuxiliar[numAuxiliar]
	
	Para i=1 Hasta num Con Paso 1 Hacer
		Escribir "Ingrese el número de identificación: "
		Leer numId
		metodoPush(numId, tope, num, pila)
	Fin Para
	
	Escribir "Esta es la pila de contenedores"
	Para j=1 Hasta num Con Paso 1 Hacer
		Escribir pila[j], " " Sin Saltar
	Fin Para
	Escribir ""
	
	Escribir "Ingrese el identificador del contenedor a retirar"
	Leer identificacion
	
	id=metodoPop(tope, pila)
	
	Mientras id<>identificacion Hacer
		metodoPush(id, topeAuxiliar, numAuxiliar, pilaAuxiliar)
		Escribir "Se insertó ", id," en la pila auxiliar"
		id=metodoPop(tope, pila)
	Fin Mientras
	
	Mientras id<>0 Hacer
		id=metodoPop(topeAuxiliar, pilaAuxiliar)
		Si id<>0 Entonces
			metodoPush(id, tope, num, pila)
		Fin Si
	Fin Mientras
	
	Escribir "Esta es la pila actual de contenedores: "
	
	Para k=1 Hasta tope Con Paso 1 Hacer
		Escribir pila[k], " " Sin Saltar
	Fin Para
	Escribir ""
	
	
FinAlgoritmo

// Ingresar un elemento en la pila (apilar)
SubProceso metodoPush( dato, tope Por Referencia, limite Por Referencia, pila )
	
	Si tope<limite Entonces
		tope=tope+1
		pila[tope]=dato
	Fin Si
	
FinSubProceso
