Funcion pri <- n_pri ( n )
	Si (n mod 1)=0 y (n mod n)=0 y (n mod 2)<>0 y (n mod 3)<>0 y (n mod 5)<>0 y (n mod 7)<>0  Entonces
		Escribir "El número es primo"
	SiNo
		Si n=2 o n=3 o n=5 o n=7 Entonces
			Escribir "El número es primo"
		SiNo
			Escribir "El número no es primo"
		Fin Si
	Fin Si
	
Fin Funcion

Algoritmo Funciones_03
	
//	Realizar una función que reciba un numero ingresado por el usuario y averigüe si el número es
//	primo o no. Un número es primo cuando es divisible sólo por 1 y por sí mismo, por ejemplo: 2,
//	3, 5, 7, 11, 13, 17, etc. Nota: recordar el uso del MOD.
	
	
	Definir n Como Entero
	Definir p Como Caracter
	
	Escribir "Ingresar un número cualquiera: "
	Leer n 
	
	p=n_pri(n)
	
FinAlgoritmo
