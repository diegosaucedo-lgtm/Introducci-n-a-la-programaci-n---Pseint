Algoritmo ejercicio_02
	
//	Realizar un programa que pida un número y determine si ese número es par o impar.
//		Mostrar en pantalla un mensaje que indique si el número es par o impar. (para que un
//			número sea par, se debe dividir entre dos y su resto debe ser igual a 0). Nota: investigar
//				la función mod de PseInt.
	
	Definir n Como Entero
	
	Escribir "Digita un número entero: "
	Leer n 
	
	Si n mod 2=0 Entonces
		Escribir "Es un número par"
	SiNo
		Escribir "Es un número impar"
	Fin Si
	
FinAlgoritmo
