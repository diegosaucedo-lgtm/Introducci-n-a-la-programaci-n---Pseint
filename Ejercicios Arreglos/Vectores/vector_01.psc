Algoritmo vector_01
	
//	Realizar un programa que rellene dos vectores al mismo tiempo, con 5 valores aleatorios y los
//	muestre por pantalla.
//	
	Definir v1,v2,i,j Como Entero
	
	Dimension v1[5]
	Escribir "Arreglo v1"
	Para i=1 Hasta 5 Con Paso 1 Hacer
		v1[i]=aleatorio(1,100)
		
		Escribir "Ingresa el numero de la posicion ",i," : ",v1[i]
	Fin Para
	
	
FinAlgoritmo
