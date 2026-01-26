Algoritmo ejercicio_01
	
//	Realizar un programa que, dado un número entero, visualice en pantalla si es par o impar.
//	En caso de que el valor ingresado sea 0, se debe mostrar "el número no es par ni impar".
//	Nota: investigar la función mod de PSeInt
//	
	
	Definir n Como Entero
	
	Escribir "Ingresa un numero: "
	Leer n 
	
	Si n mod 2<>0 Entonces
		Escribir "El numero es impar"
	SiNo
		Si n mod 2=0 y trunc(n/2)<>0 Entonces
			
			Escribir "El numero par"
		SiNo
			Escribir "El numero no es par ni impar"
		Fin Si
	Fin Si
	

	
	
FinAlgoritmo
