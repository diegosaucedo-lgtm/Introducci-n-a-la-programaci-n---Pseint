
Algoritmo Subproceso_03
	
//	Diseñar una función que reciba un numero en forma de cadena y lo devuelva como numero
//	entero. El programa podrá recibir números de hasta 3 dígitos. Nota: no poner números con decimales
//	ni letras. Ejemplo: ingresando "100"(carácter) debe convertirse en 100(entero).
	
	
	
	Definir n_caracter Como Caracter
	
	Escribir "Ingresa un número: "
	Leer n_caracter
	
	CarNum(n_caracter)
	
FinAlgoritmo

SubProceso CarNum(n_caracter)
	
	Definir n_num Como Entero
	
	n_num=ConvertirANumero(n_caracter)
	
	Si n_num<=999 Entonces
		Escribir "Conversión a número entero:"
		Escribir "Número correcto: ",n_num
	SiNo
		Escribir "Númer debe tener como másximo 3 dígitos"
	Fin Si
	
	
FinSubProceso





