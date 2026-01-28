Funcion retorno <- EsMutiplo ( n1,n2 )
	Si n1 mod n2=0  Entonces
		Escribir n1 mod n2=0 //Esta comparación da como resultado VERDADERO
	SiNo
		Escribir  n1 mod n2=0 //Esta comparación da como resultado FALSO
	Fin Si
	
Fin Funcion

Algoritmo Funciones_02
	
	
//	Crea una función EsMultiplo que reciba los dos números pasados por el usuario, validando
//	que el primer número múltiplo del segundo y devuelva verdadero si el primer número es múltiplo
//	del segundo, sino es múltiplo que devuelva falso.
	
	
	
	Definir n1, n2 Como Entero
	Definir retorno Como logico
	
	Escribir "Ingresar primer numero: "
	Leer n1
	
	Escribir "Ingresa segundo numero: "
	Leer n2
	
	retorno=EsMutiplo(n1,n2)
	
FinAlgoritmo
