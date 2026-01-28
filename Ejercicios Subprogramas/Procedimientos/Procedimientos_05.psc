Algoritmo Procedimientos_05
	
	
//	Crea un procedimiento "convertirEspaciado", que reciba como argumento un texto y muestra
//	una cadena con un espacio adicional tras cada letra.
//	Por ejemplo, "Hola, tú" devolverá "H o l a , t ú ". Crea un programa principal donde se use
//	dicho procedimiento.
	
	
	converirTeclado()
	
	
FinAlgoritmo

SubProceso converirTeclado()
	Definir tex,tex1 Como Caracter
	Definir i Como Entero
	
	Escribir "Escribir un texto o frase: "
	Leer tex

	Para i=1 Hasta Longitud(tex) Con Paso 1 Hacer
		tex1=Concatenar(SubCadena(tex,i,i)," ")
		Escribir Sin Saltar tex1
	Fin Para
	Escribir ""
	
FinSubProceso





