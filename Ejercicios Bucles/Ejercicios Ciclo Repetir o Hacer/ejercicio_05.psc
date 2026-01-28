Algoritmo ejercicio_05
	

//	Hacer un algoritmo para calcular la media de los números pares e impares, sólo se
//				ingresará diez números.

	
	Definir n, cont, ac1, ac2, cont1, cont2 Como Entero
	
	ac1=0
	ac2=0
	cont=0
	cont1=0
	cont2=0
	Repetir
		Escribir "Ingresa un numero: " Sin Saltar
		Leer n 
		
		Si n mod 2=0 Entonces
			ac1=ac1+n
			cont1=cont1+1
		SiNo
			ac2=ac2+n
			cont2=cont2+1
		Fin Si
		cont=cont+1
	Hasta Que cont=10
	
	Escribir "El acumulado de numeros pares es ",ac1/cont1
	Escribir "El acumulado de numeros impares es ",ac2/cont2
	
	
	
	
	
	
	
	
FinAlgoritmo
