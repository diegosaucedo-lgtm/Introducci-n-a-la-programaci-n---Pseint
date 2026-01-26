Algoritmo ejercicio_06
	
//	Escriba un programa que pida una frase o palabra y valide si la primera letra de esa frase
//		es una "A". Si la primera letra es una ?A?, se deberá de imprimir un mensaje por pantalla
//		que diga "CORRECTO", en caso contrario, se deberá imprimir "INCORRECTO". Nota:
//			investigar la función Subcadena de PseInt.
	
	Definir palabra Como Caracter
	
	Escribir "Introduce una letra, palabra o frase: "
	Leer palabra
	
	
	Si SubCadena(palabra,1,1)="a" o SubCadena(palabra,1,1)="A" Entonces
		Escribir "Correcto"
	SiNo
		Escribir "Incorrecto"
	Fin Si
	
FinAlgoritmo
