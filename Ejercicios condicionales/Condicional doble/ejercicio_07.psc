Algoritmo ejercicio_07
	
//	Continuando el ejercicio anterior, ahora se pedirá una frase o palabra y se validara si la
//		primera letra de la frase es igual a la última letra de la frase. Se deberá de imprimir un
//		mensaje por pantalla que diga "CORRECTO", en caso contrario, se deberá imprimir
//		"INCORRECTO".
//	
	Definir palabra Como Caracter
	
	Escribir "Introduce una letra, palabra o frase: "
	Leer palabra
	
	
	Si SubCadena(palabra,1,1)=SubCadena(palabra,Longitud(palabra),Longitud(palabra)) Entonces
		Escribir "Correcto"
	SiNo
		Escribir "Incorrecto"
	Fin Si
	
FinAlgoritmo
