Algoritmo Vectores_01
	
	//Vectores = arreglos unidimensionales
	
	Definir v1, v2, resultado como entero 
	Definir al1, al2, i Como Entero
	Definir ele1, ele2 Como Entero
	
	al1=0
	al2=0
	
	Escribir "Ingresar el tamaño del vector 1: "
	Leer ele1
	
	Dimension v1[ele1]
	
	Para i=1 Hasta ele1 Con Paso 1 Hacer
		Escribir "Ingrese el numero de la posicion ", i
		Leer v1[i]
		al1=al1+v1[i]
	Fin Para
	
	Escribir "Ingresar el tamaño del vector 2: "
	Leer ele2
	
	Dimension v2[ele2]
	
	Para i=1 Hasta ele2 Con Paso 1 Hacer
		Escribir "Ingrese el numero de la posicion", i
		Leer v2[i]
		al2=al2+v2[i]
	Fin Para
	
	resultado=al1+al2
	
	Escribir "La suma es ", resultado 
	
	
	
	
FinAlgoritmo
