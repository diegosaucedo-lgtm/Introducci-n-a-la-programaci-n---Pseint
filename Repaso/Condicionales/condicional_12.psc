Algoritmo s03
	
	
	Definir n Como Entero
	Definir t Como Caracter
	
	Escribir Sin Saltar "Ingrese un numero: "
	Leer n
	
	//Hallar si es un número positivo
	//No emplea el valor FALSO
	Si n>0 Entonces
		Escribir "Es un numero positivo"
	Fin Si
	
	Escribir Sin Saltar "Ingrese un numero positivo"
	Leer n
	
	//Halla si el número es impar o par
	t="Es par"
	// Si Entonces funciona como una reconfirmacion de la afirmacion puesta lineas arriba
	Si (n MOD 2)=1 Entonces
		t="Es impar"
	Fin Si
	
	Escribir "El numero ",n," es ",t

	
	
FinAlgoritmo
