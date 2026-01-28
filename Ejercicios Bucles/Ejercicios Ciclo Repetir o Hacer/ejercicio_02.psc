Algoritmo ejercicio_02
	
	
//	Escribir un programa que lea números enteros hasta teclear 0 (cero). Al finalizar el
//	programa se debe mostrar el máximo número ingresado, el mínimo, y el promedio de
//	todos ellos.
//	Para poder lograr, por ejemplo, el máximo inicializaremos una variable en cero llamada
//	numeroMaximo. Luego iremos comparando cada número que se ingresa con esta variable.
//	Si es mayor reemplazaremos el valor de numeroMaximo. Por ejemplo, si 5 > 0 entonces el
//	máximo entre estos números será 5. Si luego ingreso el número 2, se evalúa 2 > 5 lo que
//	resultará falso y por lo tanto el valor 5 de numeroMaximo no se reemplaza. Una lógica
//	similar tendrá el mínimo.

	Definir n, mx, mn, sum, cont Como Entero
	Definir p Como Real
	
	mx=0
	mn=0
	sum=0
	cont=0
	Repetir
		
		
		Escribir "Ingresa un numero entero: "
		Leer n 
		
		Si n<>0 Entonces
			cont=cont+1
			sum=sum+n
			p=sum/(cont)
			
			Si n>mx Entonces
				mx=n
			Fin Si
			
			
			Si cont=1 Entonces
				mn=n
			SiNo
				Si n<mn Entonces
					mn=n
				Fin Si
			Fin Si
			
			
		Fin Si
		
	Hasta Que n=0
	
	
	Escribir "Se ingresaron ", cont, " números"
	Escribir "El número máximo es ",mx
	Escribir "El número mínimo es ",mn
	Escribir "El promedio es ",p
	
	
	
	
FinAlgoritmo
