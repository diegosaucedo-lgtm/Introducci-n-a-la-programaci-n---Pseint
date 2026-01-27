Algoritmo ejercicio_08
	
//	Realizar un programa que pida tres notas y determine si un alumno aprueba o reprueba un
//		curso, sabiendo que aprobará el curso si su promedio de tres calificaciones es mayor o
//			igual a 70; y reprueba en caso contrario.
	
	Definir nota1, nota2, nota3, promedio Como Real
	
	Escribir "Ingresa la primera nota: "
	Leer nota1
	
	Escribir "Ingresa la segunda nota: "
	Leer nota2
	
	Escribir "Ingresa la tercera nota: "
	Leer nota3
	
	promedio=(nota1+nota2+nota3)/3
	
	Si promedio>=70 Entonces
		Escribir "Aprobado"
	SiNo
		Escribir "Desaprobado"
	Fin Si
	
	
FinAlgoritmo
