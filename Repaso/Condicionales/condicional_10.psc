Algoritmo s04
	
	//Hallar si el alumno aprueba o no 
	Definir n,a,b,m Como Entero
	Definir t Como Caracter
	
	
	Escribir "Ingresa la nota final del alumno: "
	Leer n
	
	Si n>10 Entonces
		Escribir "Está aprobado"
	SiNo
		Escribir "Está desaprobado"
	Fin Si
	
	
	Escribir "Ingresa dos numeros diferentes: "
	Leer a,b
	
	Si a>b Entonces
		Escribir a," es mayor ",b
	SiNo
		Escribir b," es mayor ",a
	Fin Si
	
	//Tengo que hallar a que trimestre pertenece el mes
	Escribir "Ingresa el numero del mes: "
	Leer m
	// 1,2,3 ------> 1° Trimestre
	// 4,5,6 ------> 2° Trimestre
	// 7,8,9 ------> 3° Trimestre
	// 10,11,12 ------> 4° Trimestre
	
	Si m<4 Entonces
		Escribir "1° Trimestre"
	SiNo
		Si m<7 Entonces
			Escribir "2° Trimestre"
		SiNo
			Si m<10 Entonces
				Escribir "3° Trimestre"
			SiNo
				Escribir "4° Trimestre"
			Fin Si
		Fin Si
	Fin Si
	
FinAlgoritmo
