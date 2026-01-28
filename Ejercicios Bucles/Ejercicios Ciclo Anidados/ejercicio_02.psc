Algoritmo ejercicio_02
	
//	Escriba un programa que lea un número entero (altura) y a partir de él cree una escalera
//	invertida de asteriscos con esa altura. Por ejemplo, si ingresamos una altura de 5 se
//	deberá mostrar:
//		*****
//		****
//		***
//		**
//		*
	
	
	Definir h,i,cont Como Entero
	
	Escribir "Ingresa la altura del triángulo invertido: "
	Leer h 
	
	Esperar 2 Segundos
	Limpiar Pantalla
	
	Para i=h Hasta 1 Con Paso -1 Hacer
		
		cont=0
		Mientras cont<i Hacer
			cont=cont+1
			Escribir Sin Saltar "*"
		Fin Mientras
		
		Escribir ""
		
	Fin Para
	
FinAlgoritmo
