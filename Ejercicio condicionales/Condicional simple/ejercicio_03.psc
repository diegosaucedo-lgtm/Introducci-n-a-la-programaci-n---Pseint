Algoritmo ejercicio_03
	
//	Se pide ingresar una letra del alfabeto y mostrar si dicha letra es vocal o consonante.
	
	Definir letra Como Caracter
	
	Escribir "Ingresa una letras: "
	Leer letra
	
	Si letra="a" o letra="e" o letra="i" o letra="o" o letra="u" Entonces
		Escribir "La letra ",letra," es una vocal"
	Fin Si
	
	Si letra<>"a" y letra<>"e" y letra<>"i" y letra<>"o" y letra<>"u" Entonces
		Escribir "La letra ",letra," es una consonante"
	Fin Si
	
FinAlgoritmo
