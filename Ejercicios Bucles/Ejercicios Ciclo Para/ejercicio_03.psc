Algoritmo ejercicio_03
	
	
//	Un docente de Programación tiene un listado de 3 notas registradas por cada uno de sus
//	N estudiantes. La nota final se compone de un trabajo práctico Integrador (35%), una
//	Exposición (25%) y un Parcial (40%). El docente requiere los siguientes informes claves de
//	sus estudiantes:
//		§ Nota promedio final de los estudiantes que reprobaron el curso. Un estudiante
//		  reprueba el curso si tiene una nota final inferior a 6.5
//		§ Porcentaje de alumnos que tienen una nota de integrador mayor a 7.5.
//		§ La mayor nota obtenida en las exposiciones.
//		§ Total de estudiantes que obtuvieron en el Parcial entre 4.0 y 7.5.
//		El programa pedirá la cantidad de alumnos que tiene el docente y en cada alumno pedirá
//		las 3 notas y calculará todos informes claves que requiere el docente.
//	
	
	Definir cont1,cont2,c, pr,parc,ex,i,may,porc Como real
	Definir p Como Real
	
	Escribir "Indique la cantidad de alumnos: "
	Leer c
	
	cont1=0
	cont2=0
	may=0
	Para i=1 Hasta c Con Paso 1 Hacer
		Escribir "El ",i,"° debe ingresar sus notas"
		
		Escribir "Ingresa la nota del trabajo practico: " Sin Saltar
		Leer pr
		
		Escribir "Ingresa la nota de la exposición: " Sin Saltar
		Leer ex
		
		Escribir "Ingresa la nota del parcial: " Sin Saltar
		Leer parc
		
		p=pr*35/100+ex*25/100+parc*40/100
		
		Si p<6.5 Entonces
			Escribir "El estudiante reprobo con ",p
		SiNo
			Escribir "El promedio final es ",p
		Fin Si
		
		Si ex>may Entonces
			may=ex
		Fin Si
		
		Si pr>7.5 Entonces
			cont1=cont1+1
		Fin Si
		
		Si parc>4.0 y parc<7.5 Entonces
			cont2=cont2+1
		Fin Si
		
	Fin Para
	
	porc=100*cont1/c
	Escribir "La exposición con mayor nota es ",may
	Escribir "El ",porc,"% de estudiantes tiene la nota integrador mayor a 7.5"
	Escribir "El número de estudiantes con notas parciales entre 4,0 y 7,5 es ",cont2
	
	
	
FinAlgoritmo
