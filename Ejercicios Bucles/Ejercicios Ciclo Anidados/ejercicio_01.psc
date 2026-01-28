Algoritmo ejercicio_01
	
	
//	Realizar un programa que lea un número entero (tamaño del lado) y a partir de él cree un
//	cuadrado de asteriscos de ese tamaño. Los asteriscos sólo se verán en el borde del
//cuadrado, no en el interior. Por ejemplo, si se ingresa el número 4 se debe mostrar:
//		* * * *
//		*     *
//		*     *
//		* * * *
//	Nota: Recordar el uso del escribir sin saltar en PseInt.
	
	//El cuadrado se está construyendo a partir de filas
	Definir n,i,j Como Entero
	Escribir "Ingrese el tamaño del lado del cuadrado:"
	Leer n
	//El primer para es para los **** / ****
	Para i=1 Hasta n Hacer
	//Este segundo para es para lo *  */ *  *
		Para j=1 Hasta n Hacer
			//Columnas que debe imprimir
			Si i=1 o i=n o j=1 o j=n Entonces //--->Los contadores y el condicional solo imprimen el *
				Escribir Sin Saltar "* "		//    en las posiciones 1 - 4  dentro de la fila
			SiNo
				Escribir Sin Saltar "  "        // y además la relaciona con el número de fila 1, 2, 3, 4
			FinSi
		FinPara
		Escribir ""
	FinPara

	
	
	
FinAlgoritmo
