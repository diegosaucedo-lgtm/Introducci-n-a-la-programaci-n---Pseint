Algoritmo ejercicio_03
	

//	Dada una secuencia de números ingresados por teclado que finaliza con un -1, por
//	ejemplo: 5,3,0,2,4,4,0,0,2,3,6,0,...,-1; realizar un programa que calcule el promedio de los
//	números ingresados. Suponemos que el usuario no insertará número negativos.
	
	Definir n, cont, acum, promedio Como real
	
	n=0
	acum=0
	cont=0
	
	Mientras n>-1 Hacer
		Escribir "Ingresa un numero"
		Leer n
		
		Si n>-1 Entonces
			acum=acum+n
			cont=cont+1
		Fin Si
		
	Fin Mientras
	
	Escribir "La suma acumulada es ",acum
	Escribir "La cantidad de números introducidos es ",cont
	
	Si cont=0 Entonces
		promedio=0
		Escribir "El promedio es ", promedio
	SiNo
		promedio=acum/cont
		Escribir "El promedio es ",promedio
	Fin Si
	
	
FinAlgoritmo
