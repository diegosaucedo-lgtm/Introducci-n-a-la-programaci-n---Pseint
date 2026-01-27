Algoritmo ejercicio_02
	
//	Escriba un programa en el cual se ingrese un valor límite positivo, y a continuación solicite
//	números al usuario hasta que la suma de los números introducidos supere el límite inicial.
	
	Definir limite, n, acum Como Entero
	
	Escribir "Ingresa un numero positivo: "
	Leer limite
	
	acum=0
	Mientras acum<=limite Hacer
		Escribir "Ingresa un nuevo numero: "
		Leer n
		acum=acum+n
	Fin Mientras
	
	Escribir "El limite es ",limite
	Escribir "La suma es  ",acum
	
	
	
FinAlgoritmo
