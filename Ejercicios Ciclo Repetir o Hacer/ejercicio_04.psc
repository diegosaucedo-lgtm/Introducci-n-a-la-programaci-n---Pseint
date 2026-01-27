Algoritmo ejercicio_04
	

//Se debe realizar un programa que:
//	1º) Pida por teclado un número (entero positivo).
//	2º) Pregunte al usuario si desea introducir o no otro número.
//	3º) Repita los pasos 1º y 2º mientras que el usuario no responda n/N (no).
//	4º) Muestre por pantalla la suma de los números introducidos por el usuario.
	
	Definir n,s Como Entero
	Definir op Como Caracter
	
	s=0
	Repetir
		Escribir "Ingresa un numero: " Sin Saltar
		Leer n
		
		s=s+n
		
		
		Escribir "Deseas introducir otro numero Si o No"
		Leer op
		
		
	Hasta Que op="No" o op="no"
	
	Escribir "La suma total es ",s
	
	
	
	
	
FinAlgoritmo
