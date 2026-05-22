Algoritmo s05II
	
	//Hallar si el alumno aprueba o no 
	Definir n1,n2,n3,n4,min Como Entero 
	Definir p Como Real
	
	//Hallar la nota minima
	Escribir Sin Saltar "Ingresar la nota1: "
	Leer n1
	min=n1
	
	Escribir Sin Saltar "Ingresar la nota2: "
	Leer n2
	
	Si n2<min Entonces
		min=n2
	Fin Si
	
	Escribir Sin Saltar "Ingresar la nota3: "
	Leer n3
	
	Si n3<min Entonces
		min=n3
	Fin Si
	
	Escribir Sin Saltar "Ingresar la nota4: "
	Leer n4
	
	Si n4<min Entonces
		min=n4
	Fin Si
	
	
	p=redon((n1+n2+n3+n4-min)/3) //Promedio sin la menor nota
	
	Escribir "El promedio del alumno es ",p
	
	Si p>10 Entonces
		Escribir "Aprobado"
	SiNo
		Escribir "Desaprobado"
	Fin Si
FinAlgoritmo
