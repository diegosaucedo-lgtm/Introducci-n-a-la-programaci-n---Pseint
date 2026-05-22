Algoritmo s07III
	
	//Hallar el año bisiesto
	Definir año Como Entero
	Definir m400,m4,m100 Como Logico
	
	Escribir Sin Saltar "Ingrese el año: "
	Leer año
	
	m400=(año  MOD 400)=0
	m4=(año  MOD 4)=0
	m100=(año  MOD 100)=0
	
	
	Si m400 o (m4 y  NO m100) Entonces
		Escribir "El Año ",año," es bisiesto"
	SiNo
		Escribir "El Año ",año," no es bisiesto"
	Fin Si
	
	
FinAlgoritmo
