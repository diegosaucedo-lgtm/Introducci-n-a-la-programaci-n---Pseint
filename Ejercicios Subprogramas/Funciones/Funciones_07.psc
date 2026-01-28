Funcion cont <- d_imp ( n )
	
	Definir digito, cont Como Entero
	cont= 0
    Mientras n > 0 Hacer
		digito <- n mod 10 // Obtener el último dígito
		Si digito mod 2 <>0 Entonces
			cont=cont+1
		Fin Si
		n=trunc(n/10) // Eliminar el último dígito
    FinMientras
	
Fin Funcion

Algoritmo Funciones_07
	
//	Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número
//	tiene todos sus dígitos impares (ejemplo: 333, 55, etc.). Para esto vamos a tener que separar el
//	numero en partes (si es un numero de más de un digito) y ver si cada número es par o impar.
//	Nota: recordar el uso de la función Mod y Trunc(). No podemos pasar el numero a cadena para
//	realizar el ejercicio.
	
	
	Definir n,impr como entero 
	
	Escribir "Ingresa un número entero positivo"
	Leer n 
	
	impr=d_imp(n)
	
	Escribir "El número ",n," tiene ",impr," números impares"

FinAlgoritmo
