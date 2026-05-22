Algoritmo ordenamiento_de_objetos_de_un_arreglo
	
//	Ordenar un arreglo significa reorganizar sus elementos siguiendo un criterio específico de orden. 
//	En programación, este proceso se realiza mediante algoritmos de ordenamiento, que transforman 
//	una lista desordenada en otra donde los elementos cumplen una relación de orden definida.


	Definir arreglo,i,j,k,m,min,val_min Como Entero
	Dimension arreglo[7]
	
	Para i=1 Hasta 7 Con Paso 1 Hacer
		Leer arreglo[i]
	Fin Para
	
	Para k=1 Hasta 6 Con Paso 1 Hacer
		min=k
		Para j=k+1 Hasta 7 Con Paso 1 Hacer
			Si arreglo[j]<arreglo[min] Entonces
				min=j
			Fin Si
		Fin Para
		val_min=arreglo[min]
		//Estoy intercambiando los valores 
		arreglo[min]=arreglo[k]
		arreglo[k]=val_min
	Fin Para
	
	Para m=1 Hasta 7 Con Paso 1 Hacer
		Escribir Sin Saltar arreglo[m]," "
	Fin Para
	
FinAlgoritmo
