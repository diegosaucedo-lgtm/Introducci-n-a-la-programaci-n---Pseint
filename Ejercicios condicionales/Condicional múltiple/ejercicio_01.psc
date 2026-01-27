Algoritmo ejercicio_01
		
//	Construir un programa que simule un menú de opciones para realizar las cuatro
//		operaciones aritméticas básicas (suma, resta, multiplicación y división) con dos valores
//		numéricos enteros. El usuario, además, debe especificar la operación con el primer
//	carácter de la operación que desea realizar: "S" o "s" para la suma, "R" o "r" para la resta, "M"
//		o "m" para la multiplicación y "D" o "d" para la división.
	
	
	Definir op Como Caracter
	Definir a,b Como Entero
	
	Escribir "_________________________"
	Escribir "Ingresa un numero: " Sin Saltar
	Leer a
	Escribir "Ingres otro numero: " Sin Saltar
	Leer b 
	Escribir "_________________________"
	Escribir "Selecciona del menú"
	Escribir "S o s -> Adición"
	Escribir "R o r -> Resta"
	Escribir "M o m -> Multiplicación"
	Escribir "D o d -> División"
	Leer op
	
	Segun op Hacer
		"S" o "s":
			Escribir "La suma es ",a+b
		"R" o "r":
			Escribir "La resta es ",a-b
		"M" o "m":
			Escribir "La multiplicación es ",a*b
		"D" o "d":
			Escribir "La división es ",a/b
		De Otro Modo:
			Escribir "Operación no válida"
	Fin Segun
	
FinAlgoritmo
