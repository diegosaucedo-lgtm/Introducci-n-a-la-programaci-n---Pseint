Algoritmo ejercicio_14
	
//	14. Hacer un programa que ingrese por teclado un número total de segundos y que luego 
//	pueda mostrar la cantidad de horas, minutos y segundos que existen en el valor 
//	ingresado. 
	
	
	Definir seg, h, d, m Como Real
	
	Escribir "Calcular segundos a minutos, horas y días"
	Escribir "Ingresa la cantidad de segundos: "Sin Saltar
	Leer seg
	
	m=seg/60
	h=seg/3600
	d=seg/86400
	
	Escribir "En minutos ",m
	Escribir "En horas ",h
	Escribir "En dias ",d

	
FinAlgoritmo
