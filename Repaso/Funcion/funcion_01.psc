Funcion resultado <- Multiplicar ( n1,n2 )
	Definir resultado Como Real
	resultado=n1*n2
Fin Funcion

Funcion resultado <- Dividir ( n1,n2 )
	Definir resultado Como Real
	resultado=n1/n2
Fin Funcion

Funcion resultado <- Cuadrado ( n1,n2 )
	Definir resultado Como Real
	resultado=n1*n1
Fin Funcion
	

Algoritmo s21_funcion
	
	Definir v1,v2 Como Entero
	
	Escribir "Ingresar un numero entero y positivo: "
	Leer v1,v2
	
	Escribir "Multiplicacion es : ",Multiplicar(v1,v2)
	Escribir "Division es : ",Dividir(v1,v2)
	Escribir "Cuadrado del primer termino es : ",Cuadrado(v1,v2)
	
FinAlgoritmo
