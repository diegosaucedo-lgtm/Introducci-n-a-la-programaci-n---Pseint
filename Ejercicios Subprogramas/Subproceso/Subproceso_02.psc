
Algoritmo Subproceso_02
	
//	Realizar un programa que pida al usuario una frase y una letra a buscar en esa frase. El subrpoceso
//	debe devolver la cantidad de veces que encontró la letra. Nota: recordar el uso de la función
//	Subcadena().
	
	
	
	Definir frase, a Como Caracter
	
	Escribir "Ingresa un frase: "
	Leer frase
	
	Escribir "Indica que letra quieres contar: "
	Leer a
	
	LetrFras(frase,a)
	
	
	
FinAlgoritmo

Subproceso LetrFras(frase,a)
	
	
	Definir i,cant,n Como Entero
	Definir min Como Caracter
	min=Minusculas(frase)
	n=Longitud(frase)
	cant=0
	Para i=1 Hasta n Con Paso 1 Hacer
		Si SubCadena(min,i,i)=a Entonces
			cant=cant+1
		Fin Si
	Fin Para
	
	Escribir "Se repite la letra ",a," en ",cant," oportunidades"
	
	
FinSubProceso






