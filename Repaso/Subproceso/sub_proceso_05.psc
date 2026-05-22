Algoritmo s22_subproceso_llamado_procedimiento
	
	Definir n Como Entero
	
	menu()
	n=azar(4)+1
	Escribir "El numero al azar es ",n
	Segun n Hacer
		1:
			Escribir "Realizar cien planchas"
		2:
			sumar()
		3:
			Escribir "Ver pelicula"
		De Otro Modo:
			Escribir "Bye"
	Fin Segun
	
	
FinAlgoritmo

//Procedimiento porque no hay nada en el parametro
SubProceso menu()
	Limpiar Pantalla
	Escribir "Premio/Castigo"
	Escribir "1. Castigo"
	Escribir "2. Sumar"
	Escribir "3. Pelicula"
	Escribir "4. Salir"
	Escribir "Aleatorio (1-4)"
FinSubProceso

SubProceso sumar()
	Definir n1,n2,suma Como Entero
	Escribir "Ingresa el primer numero: "
	Leer n1
	Escribir "Ingresa el segundo numero: "
	Leer n2
	
	suma=n1+n2
	
	Escribir "La suma es ",suma
	
FinSubProceso

	