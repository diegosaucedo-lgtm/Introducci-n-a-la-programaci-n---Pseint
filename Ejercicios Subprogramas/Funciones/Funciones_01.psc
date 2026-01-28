Funcion resultado <- par_impar ( n )
	Definir resultado Como Logico
	Si n mod 2=0 Entonces
		resultado=Falso
	SiNo
		resultado=Verdadero
	Fin Si
	
Fin Funcion

Algoritmo Funciones_01
	
	
//	Realizar una función que valide si un número es impar o no. Si es impar la función debe devolver
//	un verdadero, si no es impar debe devolver falso. Nota: la función no debe tener mensajes
//	que digan si es par o no, eso debe pasar en el Algoritmo.
	
	
	Definir n Como Entero
	Definir resultado Como logico
	
	
	Escribir "Ingresa un numero entero positivo"
	Leer n 
	
	resultado=par_impar(n)
	
	
	Si resultado Entonces
		Escribir "El número es impar"
	SiNo
		Escribir "El número no es impar"
	Fin Si
	
FinAlgoritmo


