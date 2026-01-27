Algoritmo ejercicio_10
	
//	Solicitar al usuario que ingrese dos números enteros y determinar si ambos son pares o
//	impares. Mostrar en pantalla un mensaje que indique "Ambos números son pares" siempre
//	y cuando cumplan con la condición. En caso contrario se deberá imprimir el siguiente
//	mensaje "Los números no son pares, o uno de ellos no es par".
	
	Definir num1, num2 Como Entero
	
	Escribir "Ingresar un número entero: "
	Leer num1
	
	Escribir "Ingresa un número entero: "
	Leer num2
	
	Si num1 mod 2=0 y num2 mod 2=0 Entonces
		Escribir "Ambos números son pares"
	SiNo
		Escribir "Ambos números son impares, o uno de ellos es impar"
	Fin Si


	
	
FinAlgoritmo
