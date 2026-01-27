Algoritmo ejercicio_10
	
//	10. Un colegio desea saber qué porcentaje de niños y qué porcentaje de niñas hay en el curso 
//	actual. Diseñar un algoritmo para este propósito. Recuerda que para calcular el porcentaje 
//	puedes hacer una regla de 3 simple. El programa debe solicitar al usuario que ingrese la 
//	cantidad total de niños, y la cantidad total de niñas que hay en el curso. 
	
	
	Definir niños,niñas,total Como Entero
	Definir p1,p2 Como Real
	Escribir "Calcular porcentaje de niños y niñas: "
	Escribir 'Ingresar el numero de niños: ' Sin Saltar
	Leer niños
	Escribir 'Ingresa el numero de niñas: ' Sin Saltar
	Leer niñas
	
	total <- niños+niñas
	
	p1 <- (niños/total)*100
	p2 <- (niñas/total)*100
	
	Escribir 'Los niños representan el ',p1,'%'
	Escribir 'Las niñas represental el ',p2,'%'
	
FinAlgoritmo
