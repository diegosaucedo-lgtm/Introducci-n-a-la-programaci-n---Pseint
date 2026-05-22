Algoritmo s05III
	
	//Hallar si el alumno aprueba o no 
	Definir n1,n2,n3,n4,min Como Entero
	Definir nota, contador,acumulador Como Entero
	Definir p Como Real
	
	//Hallar la nota minima - empleo bucles introductorio
	//Inicializo el contador
	contador=0
	acumulador=0
	min=20
	
	contador=contador+1
	Escribir Sin Saltar "Ingresar la ",contador," nota: "
	Leer nota
	Si nota<min Entonces
		min=nota
	Fin Si
	acumulador=acumulador+nota
	
	contador=contador+1
	Escribir Sin Saltar "Ingresar la ",contador," nota: "
	Leer nota
	Si nota<min Entonces
		min=nota
	Fin Si
	acumulador=acumulador+nota
	
	contador=contador+1
	Escribir Sin Saltar "Ingresar la ",contador," nota: "
	Leer nota
	Si nota<min Entonces
		min=nota
	Fin Si
	acumulador=acumulador+nota
	
	contador=contador+1
	Escribir Sin Saltar "Ingresar la ",contador," nota: "
	Leer nota
	Si nota<min Entonces
		min=nota
	Fin Si
	acumulador=acumulador+nota
	
	p=redon((acumulador-min)/3) //Promedio sin la menor nota
	
	Escribir "El promedio del alumnos es ",p
	
	Si p>10 Entonces
		Escribir "Aprobado"
	SiNo
		Escribir "Desaprobado"
	Fin Si
	
	
FinAlgoritmo
