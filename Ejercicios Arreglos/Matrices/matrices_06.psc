Algoritmo ejercicio_06
	

//	Rellenar una matriz, de 3 x 3, con una palabra de 9 de longitud, pedida por el usuario, encontrando
//	la manera de que la frase se muestre de manera continua en la matriz.
//	Por ejemplo, si tenemos la palabra habilidad, nuestra matriz se debería ver así:
//		H A B
//		I L I
//		D A D
//	Nota: recordar el uso de la función Subcadena().
	

	
	Definir i,j Como Entero
	Definir frase,m Como Caracter
	
	Dimension m[3,3]
	
	Escribir "Ingresa una frase de longitud 9: "
	Leer frase
	
	Para i=1 Hasta 3 Con Paso 1 Hacer
		Para j=1 Hasta 3 Con Paso 1 Hacer
			Segun i Hacer
				1:
					m[i,j]=SubCadena(frase,j,j)
					Escribir m[i,j] Sin Saltar
				2:
					m[i,j]=SubCadena(frase,(i+j+1),(i+j+1))
					Escribir m[i,j] Sin Saltar
				3:
					m[i,j]=SubCadena(frase,(i+j+3),(i+j+3))
					Escribir m[i,j] Sin Saltar
				De Otro Modo:	
			Fin Segun
		Fin Para
		Escribir " "
	Fin Para
	
	
	
FinAlgoritmo
