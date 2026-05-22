Algoritmo funciones_1
	
	//Logaritmo natural
	//Para un x ingresado por un usuario y m el numero de terminos a evaluar
	//Ln(x+1) = sumatoria (n=1 ; m) ((-1)^n+1 * x^n)/n
	//x < 1
	
	Definir x, fx Como Real
	Definir m, n Como Entero
	
	Repetir
		Escribir  Sin Saltar"Ingrese el valor de x: "
		Leer x
	Hasta Que x<1 y x>-1
	
	Escribir Sin Saltar "Ingrese el numero de terminos: "
	Leer m
	
	fx=0
	Para n=1 Hasta m Con Paso 1 Hacer
		fx=fx+((-1)^(n+1)*(x^n))/n
	Fin Para
	
	Escribir "Ln(",x,"+1)=",fx
	Escribir "Ln(",x+1,")=",fx
	
FinAlgoritmo
