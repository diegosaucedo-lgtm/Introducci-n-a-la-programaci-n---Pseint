Algoritmo ejercicio_06
	
	
	
//	Siguiendo el ejercicio 20 de los ejercicios principales, ahora deberemos hacer lo mismo
//	pero que la cadena se muestre al revés. Por ejemplo, si tenemos la cadena: Hola,
//	deberemos mostrar a l o H.
	
	
	
	
	Definir frase_i,frase_f Como Caracter
	Definir i Como Entero
	
	Escribir "Ingresa una frase: "
	Leer frase_i
	
	Para i=Longitud(frase_i) Hasta 1 Con Paso -1 Hacer
		
		frase_f=Concatenar(SubCadena(frase_i,i,i)," ")
		
		Escribir Sin Saltar frase_f
		
	Fin Para
	
	
	
FinAlgoritmo
