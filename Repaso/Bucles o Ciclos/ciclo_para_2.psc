Algoritmo ciclo_para_2
	//Un jeep puede viajar 500 km con un tanque lleno de gasolina
	//Desde una posicion inicial, conteniendo n tanques de gasolina el mismo jeep puedes viajar:
	//l=500(1+1/3+1/5+....+
	//1/(2n-1)km
	//Estableciendo economía de combustible en una ruta. Diseñe un pseudocódigo que calcule el valor de l dado n
	
	Definir l, s Como Real
	Definir n, m Como Entero
	
	Escribir Sin Saltar "n="
	Leer m
	
	s=0
	Para n=1 Hasta m Con Paso 1 Hacer
		s=s+1/(2*n-1)
	Fin Para
	l=500*s
	
	Escribir "L=",l
	
	
	
FinAlgoritmo
