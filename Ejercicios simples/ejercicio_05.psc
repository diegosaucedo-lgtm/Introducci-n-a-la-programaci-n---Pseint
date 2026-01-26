Algoritmo ejercicio_05
	
//	5. Escriba un programa que permita al usuario ingresar el valor de dos variables numéricas de 
//	tipo entero. Posteriormente, el programa debe intercambiar los valores de ambas variables y 
//	mostrar el resultado final por pantalla.  
//	Por ejemplo, si el usuario ingresa los valores num1 = 9 y num2 = 3, la salida a del programa 
//	deberá mostrar: num1 = 3 y num2 = 9
	
	Definir num1, num2, aux Como Real
	
	Escribir "Intercambio de valores y variables"
	Escribir "Ingresa el primer número: "
	Leer num1 //2
	
	Escribir "Ingresa el segundo número: "
	Leer num2 //3
	
	Escribir "Números antes de cambiar: "
	Escribir "Primer número: ",num1
	Escribir "Segundo número: ", num2
	
	//Primer modo
	aux=num1+num2 //5=2+3 
	num1=aux-num1 //3=5-2
	num2=aux-num2 //2=5-3
	
	//Segundo modo
	//aux=num1
	//num1=num2
	//num2=aux
	
	Escribir "Números después de cambiar: "
	Escribir "El primer número ahora es: ", num1
	Escribir "El segundo número ahora es: ",num2
	
FinAlgoritmo
