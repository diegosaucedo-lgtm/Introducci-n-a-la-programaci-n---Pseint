Algoritmo s05I
	
	//Hallamos si el alumno aprueba o no 
	Definir n1,n2,n3,n4 Como Entero
	Definir p Como Real
	
	Escribir Sin Saltar "Ingresar la nota1: "
	Leer n1
	Escribir Sin Saltar "Ingresar la nota2: "
	Leer n2
	Escribir Sin Saltar "Ingresar la nota3: "
	Leer n3
	Escribir Sin Saltar "Ingresar la nota4: "
	Leer n4
	
	p=redon((n1+n2+n3+n4)/4) //Redondea un numero decimal
	
	Escribir "El promedio del alumnos es ",p
	
	Si p>10 Entonces
		Escribir "Aprobado"
	SiNo
		Escribir "Desaprobado"
	Fin Si
	
	
FinAlgoritmo
