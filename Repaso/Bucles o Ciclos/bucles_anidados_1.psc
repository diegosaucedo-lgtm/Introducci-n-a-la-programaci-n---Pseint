Algoritmo bucles_anidados
	
	//Piramides
	//Triangulos isosceles con numeros
	
	Definir n, i, j, aux Como Entero
	
	Escribir Sin Saltar "Ingrese el valor de n: "
	Leer n
	
	Para i=1 Hasta n Con Paso 1 Hacer
		Para j=1 Hasta n-i Con Paso 1 Hacer
			Escribir Sin Saltar "  "
		Fin Para
		
		aux=i
		Para j=1 Hasta i Con Paso 1 Hacer
			Escribir Sin Saltar aux, " "
			aux=aux+1
		Fin Para
		
		
		aux=aux-2
		Si i>=2 Entonces
			Para j=1 Hasta i-1 Con Paso 1 Hacer
				Escribir Sin Saltar aux," "
				aux=aux-1
			Fin Para
		Fin Si
		
		Escribir ""
	Fin Para
	
	
FinAlgoritmo
