Algoritmo s07I
	
	//Hallar año  bisiesto
	Definir año Como Entero
	
	Escribir Sin Saltar "Ingrese el año: "
	Leer año
	
	Si (año  MOD 400)=0 Entonces
		Escribir "El Año ",año," es bisiesto"
	SiNo
		Si (año  MOD 4)=0 y (año  MOD 100)<>0 Entonces
			Escribir "El Año ",año," es bisiesto"
		SiNo
			Escribir "El Año ",año," no es bisiesto"
		Fin Si
	Fin Si
	
	
	
FinAlgoritmo
