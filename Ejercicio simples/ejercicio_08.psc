Algoritmo ejercicio_08
//	A partir de una conocida cantidad de días que el usuario ingresa a través del teclado, 
//	escriba un programa para convertir los días en horas, en minutos y en segundos. Por 
//		ejemplo 
//		1 día = 24 horas = 1440 minutos = 86400 segundos
	
	Definir dias,h,m,s Como Entero
	Escribir "Conversor de días a horas, minutos y segundos"
	Escribir 'Escribir el numero de días: ' Sin Saltar
	Leer dias
	h <- dias*24
	m <- dias*1440
	s <- dias*86400
	Escribir "En ",dias," días hay ", h, " horas, ",m," minutos y ",s," segundos"


FinAlgoritmo
