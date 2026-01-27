Algoritmo ejercicio_05
	
//	Escriba un programa que pida 3 notas y valide si esas notas están entre 1 y 10. Si están
//			entre esos parámetros se debe poner en verdadero una variable de tipo lógico y si no
//				ponerla en falso. Al final el programa debe decir si las 3 notas son correctas usando la
//					variable de tipo lógico
	
	Definir not1, not2,not3 Como Entero
	Definir var Como Logico
	
	Escribir "Ingresa la primera nota: "
	Leer not1
	
	Escribir "Ingresa la segunda nota: "
	Leer not2
	
	Escribir "Ingresa la tercera nota: "
	Leer not3
	
	var=(not1>=1 y not1<=10) y (not2>=1 y not2<=10) y (not3>=1 y not3<=10)
	
	
	Si var  Entonces
		Escribir "Las notas son correctas"
	SiNo
		Escribir "Las notas son incorrectas"
	Fin Si
	
FinAlgoritmo
