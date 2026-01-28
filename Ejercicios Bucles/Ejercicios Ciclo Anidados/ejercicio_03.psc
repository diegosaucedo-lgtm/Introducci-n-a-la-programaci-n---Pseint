Algoritmo ejercicio_03
	
//	La función factorial se aplica a números enteros positivos. El factorial de un número entero
//	positivo (!n) es igual al producto de los enteros positivos desde 1 hasta n:
//	n! = 1 * 2 * 3 * 4 * 5 * (n-1) * n
//	Escriba un programa que calcule las factoriales de todos los números enteros desde el 1
//	hasta el 5. El programa deberá mostrar la siguiente salida:
//	!1 = 1
//	!2 = 1*2 = 2
//	...
//	!5 = 1*2*3*4*5 = 120
	
	
	Definir n, acu, i,cont Como Entero
	
	Escribir "Ingresa el factorial que desea saber: "
	Leer n 
	
	
	Para i=1 Hasta n Con Paso 1 Hacer
		Escribir Sin Saltar"!",i,"="
		cont=0
		acu=1
		Mientras cont<i Hacer
			cont=cont+1
			Si cont<i  Entonces
				Escribir Sin Saltar cont,"*"
			SiNo
				Escribir Sin Saltar cont,"="
			Fin Si
			acu=acu*cont
		Fin Mientras
		Escribir Sin Saltar acu
		Escribir ""
	Fin Para
	
	
	//Solucion de BING
	//	Definir i,j, factorial Como Entero
	//	Para i<-1 Hasta 5 Con Paso 1 Hacer
	//		factorial<-1
	//		Para j<-1 Hasta i Con Paso 1 Hacer
	//			factorial<-factorial*j
	//		FinPara
	//		Escribir "El factorial de ",i," es ",factorial
	//	FinPara
	
	
	
	
FinAlgoritmo
