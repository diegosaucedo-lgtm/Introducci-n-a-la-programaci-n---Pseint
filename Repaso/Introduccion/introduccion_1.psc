Algoritmo s01
	//Analizo un numero y señalos los millares, las centenas, las decenas y la unidades, además
	//invierto el numero
	Definir n,U,D,C,M,I Como Entero
	Escribir "Ingresa un número de 4 cifras: "
	Leer n //4579
	
	//N va adquirir distintos valores en cada nuevo proceso
	Escribir "------------------------------------"
	U=n mod 10; //Residuo es 9
	Escribir "U= ",U," unidades"
	
	n=trunc(n/10) //Valor nuevo =457
	
	D=n mod 10; //Residuo es 7
	Escribir "D= ",D," decenas"
	
	n=trunc(n/10)//Valor nuevo= 45
	
	C=n mod 10; // Residuo es 5
	Escribir "C= ",C," centenas"
	
	n=trunc(n/10)//Valor nuevo= 4
	
	M=n mod 10; // Residuo es 4
	Escribir "M= ",M," millares"
	
	//Número invertido
	I=U*1000+D*100+C*10+M*1
	Escribir "El número invertido es: ",I
	
	
FinAlgoritmo
