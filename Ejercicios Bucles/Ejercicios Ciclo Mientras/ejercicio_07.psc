Algoritmo ejercicio_07
	
//	Calcular las calificaciones de un grupo de alumnos. La nota final de cada alumno se
//	calcula según el siguiente criterio: la parte práctica vale el 10%; la parte de problemas vale
//	el 50% y la parte teórica el 40%. El programa leerá el nombre del alumno, las tres notas
//	obtenidas, mostrará el resultado por pantalla, y a continuación volverá a pedir los datos del
//	siguiente alumno hasta que el nombre sea una cadena vacía. Las notas deben estar
//	comprendidas entre 0 y 10, y si no están dentro de ese rango no se imprimirá el promedio
//		y se mostrará un mensaje de error.
	
	Definir nomb Como Caracter
	Definir n1,n2,n3, p Como Real
	
	Escribir "Ingresa el nombre del alumno"
	Leer nomb
	
	Mientras nomb<>"" Hacer
		
		Escribir "Ingresa la nota de practicas: " Sin Saltar
		Leer n1
		
		Escribir "Ingresa la nota de problemas: " Sin Saltar
		Leer n2
		
		Escribir "Ingresa la nota de teoría: " Sin Saltar
		Leer n3
		
		
		Si (n1>=0 y n1<=10) y (n2>=0 y n2<=10) y (n3>=0 y n3<=10) Entonces
			p=10*n1/100+n2*50/100+n3*40/100
			Escribir "La promedio del alumno ",nomb," es ",p
		SiNo
			Escribir "Error"
		Fin Si
		
		Escribir "Ingresa el nombre del alumno"
		Leer nomb
		
	Fin Mientras
	
	
	
FinAlgoritmo
