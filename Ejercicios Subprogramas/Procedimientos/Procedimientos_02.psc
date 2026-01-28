Algoritmo Procedimientos_02
	
	
//	Crear un procedimiento que calcule la temperatura media de un día a partir de la temperatura
//	máxima y mínima. Crear un programa principal, que, utilizando un procedimiento, vaya pidiendo
//	la temperatura máxima y mínima de n días y vaya mostrando la media de cada día. El
//	programa pedirá el número de días que se van a introducir.

	temperaturaMedia()
	
FinAlgoritmo

SubProceso temperaturaMedia()
	
	
	Definir n Como Entero
	
	Escribir "Ingresar el numero de dias"
	Leer n
	
	Definir mx,mn,m Como Real
	Definir i Como Entero
	
	Para i=1 Hasta n Con Paso 1 Hacer
		Escribir "Ingresa la temperatura maxima: "
		Leer mx
		
		Escribir "Ingresa la temperatura minima: "
		Leer mn
		
		
		m=(mx+mn)/2
		
		Escribir "La temperatura media del ", i,"° día es ",m
	Fin Para
	
FinSubProceso
