Funcion s <- X01 ( n )
	
	Definir s,digito Como Real
	
	s <- 0
    Mientras n > 0 Hacer
		digito <- n mod 10 // Obtener el último dígito
		s <- s + digito // Sumar el dígito a la suma
		n=trunc(n/10) // Eliminar el último dígito
    FinMientras
	
	
Fin Funcion

Algoritmo Funciones_06
	
	
//	Realizar una función que calcule la suma de los dígitos de un número.
//	Ejemplo: 25 = 2 + 5 = 7
//	Nota: Para obtener el último número de un digito de 2 cifras o más debemos pensar en el
//	resto de una división entre 10. Recordar el uso de la función Mod y Trunc.
	
	Definir n,suma Como Entero
	
	
	Escribir "Ingresa un numero entero positivo: "
	Leer n 
	
	suma=X01(n)
	
	Escribir "La suma de los dígitos de ",n," es ",suma
	
FinAlgoritmo
