Algoritmo s11
	
	//Hallar la suma desde 1  hasta n 
	Definir x,i,suma Como Entero
	Definir condicion Como Logico
	

	
	Escribir "Ingresa un numero positivo"
	Leer x
	i=1
	suma=0
	
	Mientras i<=x Hacer //La condicion debe ser verdadera siempre para que se repita las acciones
		
		Si i<x Entonces
			Escribir Sin Saltar i," + "
		SiNo
			Escribir Sin Saltar i," = "
		Fin Si
		suma=suma+i
		i=i+1
	Fin Mientras
	Escribir suma
	
FinAlgoritmo
