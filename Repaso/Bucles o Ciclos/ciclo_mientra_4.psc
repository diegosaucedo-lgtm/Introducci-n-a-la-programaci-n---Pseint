Algoritmo s12
	
	Definir x, suma, i Como Entero
	Definir condicicon Como Logico
	
	Escribir "Hola, bucle mientras"
	Leer x
	
	Leer x
	Mientras Verdadero Hacer //La condicion debe ser verdadera siempre para que se repita las acciones
		Escribir "Hola, bucle mientras"
	Fin Mientras
	
	Leer x
	i=1
	Mientras Verdadero Hacer //La condicion debe ser verdadera siempre para que se repita las acciones
		Escribir "Hola, bucle mientras",i
		i=i+1
	Fin Mientras
	
	Leer x
	i=1
	condicion=Verdadero
	
	Mientras condicion Hacer //La condicion debe ser verdadera siempre para que se repita las acciones
		Escribir "Hola, bucle mientras",i
		i=i+1
		Leer x
	Fin Mientras
	
	Leer x
	i=1
	condicion=Verdadero
	
	Mientras condicion Hacer //La condicion debe ser verdadera siempre para que se repita las acciones
		Escribir "Hola, bucle mientras",i
		Si i=10 Entonces
			condicion=Falso
		Fin Si
		i=i+1
		Leer x
	Fin Mientras
	
	Leer x
	i=1
	condicion=Verdadero
	
	Mientras i<=10 Hacer //La condicion debe ser verdadera siempre para que se repita las acciones
		Escribir "Hola, bucle mientras",i
		i=i+1
		Leer x
	Fin Mientras
	
	Leer x
	i=0
	condicion=Verdadero
	
	Mientras i<10 Hacer //La condicion debe ser verdadera siempre para que se repita las acciones
		Escribir "Hola, bucle mientras",i+1
		i=i+1
	Fin Mientras
	
	
	Leer x
	i=1
	condicion=Verdadero
	
	Mientras i<=10 Hacer //La condicion debe ser verdadera siempre para que se repita las acciones
		Escribir i
		i=i+1
	Fin Mientras
	
	Leer x
	i=1
	condicion=Verdadero
	
	Mientras i<=10 Hacer //La condicion debe ser verdadera siempre para que se repita las acciones
		Escribir Sin Saltar i," + "
		i=i+1
	Fin Mientras
	
	Leer x
	i=1
	suma=0
	
	Mientras i<=10 Hacer //La condicion debe ser verdadera siempre para que se repita las acciones
		
		Si i<10 Entonces
			Escribir Sin Saltar i," + "
		SiNo
			Escribir Sin Saltar i," = "
		Fin Si
		suma=suma+i
		i=i+1
	Fin Mientras
	Escribir suma
	
	
	
	
FinAlgoritmo
