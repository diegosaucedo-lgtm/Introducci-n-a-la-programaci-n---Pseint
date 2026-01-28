Algoritmo ejercicio_04
	
	
//	Realizar un programa que muestre la cantidad de números que son múltiplos de 2 o de 3
//	comprendidos entre 1 y 100.
	
	Definir i,c2,c3 Como Entero
	
	c2=0
	c3=0
	Para i=1 Hasta 100 Con Paso 1 Hacer
		
		Si i mod 2=0 Entonces
			c2=c2+1
		Fin Si
		
		Si i mod 3=0 Entonces
			c3=c3+1
		Fin Si
		
	Fin Para
	
	Escribir "La cantidad de números múltiplos de 2 es ",c2
	Escribir "La cantidad de números múltiplos de 3 es ",c3
	
	
FinAlgoritmo
