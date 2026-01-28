Algoritmo Procedimientos_04


//	Escribir un programa que procese una secuencia de caracteres ingresada por teclado y terminada
//	en punto, y luego codifique la palabra o frase ingresada de la siguiente manera: cada vocal
//	se reemplaza por el carácter que se indica en la tabla y el resto de los caracteres (incluyendo
//	a las vocales acentuadas) se mantienen sin cambios.
//
//	a e i o u
//	@ # $ % *
//
//	Realice un subprograma que reciba una secuencia de caracteres y retorne la codificación correspondiente.
//	Utilice la estructura "según" para la transformación.
//	Por ejemplo, si el usuario ingresa: Ayer, lunes, salimos a las once y 10.
//		La salida del programa debería ser: @y#r, l*n#s, s@l$m%s @ l@s %nc# y 10.
//		NOTA: investigue el uso de la función concatenar de PSeInt para armar la palabra/frase.
	
	transfomar()
	
	
FinAlgoritmo

SubProceso transfomar()
	
	Definir frase Como Caracter
	
	Escribir "Ingresa una frase: "
	Leer frase
	
	Definir aux Como Caracter
	Definir i Como Entero
	Para i=1 Hasta Longitud(frase) Con Paso 1 Hacer
		
		Segun SubCadena(frase,i,i) Hacer
			"a":
				aux=Concatenar("@","")
			"e":
				aux=Concatenar("#","")
			"i":
				aux=Concatenar("$","")
			"o":
				aux=Concatenar("%","")
			"u":
				aux=Concatenar("*","")
			De Otro Modo:
				aux=Concatenar(SubCadena(frase,i,i),"")
		Fin Segun
		
		Escribir Sin Saltar aux
		
	Fin Para
	
	Escribir ""
	
	
FinSubProceso






