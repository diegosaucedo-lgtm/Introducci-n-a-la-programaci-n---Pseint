Algoritmo arrreglos_bidimensional1
	
	//Matrices= arreglos bidimensionales
	
	Definir matriz, f, c Como Entero
	
	//Una matriza de 3 filas y 4 columnas
	Dimension matriz[3,4]
	
	Para f=1 Hasta 3 Con Paso 1 Hacer
		Para c=1 Hasta 4 Con Paso 1 Hacer
			Escribir "Ingrese el elemento [",f," , ",c,"]"
			Leer matriz[f,c]
		Fin Para
	Fin Para
	
	Para f=1 Hasta 3 Con Paso 1 Hacer
		Para c=1 Hasta 4 Con Paso 1 Hacer
			Escribir "El  elemento [",f," , ",c,"] es ", matriz[f,c]
		Fin Para
	Fin Para
	
	
FinAlgoritmo
