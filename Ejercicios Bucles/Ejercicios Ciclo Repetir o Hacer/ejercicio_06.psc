Algoritmo ejercicio_06
	
	
//	Se pide escribir un programa que calcule la suma de los N primeros números pares. Es
//	decir, si ingresamos el número 5 como valor de N, el algoritmo nos debe realizar la suma
//		de los siguientes valores: 2+4+6+8+10.
	
	
	Definir n, ac, cont Como Entero
	
	Escribir "Ingresa la cantidad de numeros pares que deseas sumar: "
	Leer n 
	
	cont=0
	ac=0
	Repetir
		cont=cont+1
		ac=ac+cont*2	
	Hasta Que cont=n
	
	Escribir "La suma es ",ac
	
	
	
FinAlgoritmo
