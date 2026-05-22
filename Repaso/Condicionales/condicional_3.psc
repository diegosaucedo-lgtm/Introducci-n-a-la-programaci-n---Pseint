Algoritmo s08
	//IMPORTANTE: EN EL MODO FLEXIBLE SEGUN NO RECONOCE LETRAS O CARACTERES COMO Opcion 
	
	Definir x,m Como Entero
	Definir L Como Caracter
	
	//Hallamos si el numero es multiplo de 2
	Escribir Sin Saltar "Ingresa un numero positivo: "
	Leer x
	
	Segun (x  MOD 2) Hacer
		0:
			Escribir "El número ",x," es multiplo de 2"
		De Otro Modo:
			Escribir "El número ",x," no es multiplo de 2"
	Fin Segun
	
	Esperar Tecla //Presiono cualquier tecla
	Limpiar Pantalla //Inmediatamente borrar lo que hay en la pantalla
	
	//Hallar el mes con su número correspondiente
	Escribir Sin Saltar "Ingrese el numero del mes (1-12): "
	Leer m
	
	Segun m Hacer
		1:
			Escribir "Enero"
		2:
			Escribir "Febrero"
		3:
			Escribir "Marzo"
		4: 
			Escribir "Abril"
		5: 
			Escribir "Mayo"
		6:  
			Escribir "Junio"
		7: 
			Escribir "Julio"
		8: 
			Escribir "Agosto"
		9:
			Escribir "Septiembre"
		10:
			Escribir "Octubre"
		11: 
			Escribir "Noviembre"
		12: 
			Escribir "Diciembre"
		De Otro Modo:
			Escribir "Este mes no es valido"
	Fin Segun
	
	Esperar Tecla
	Limpiar Pantalla
	
	//Hallar si una letra es una vocal o consonante
	Escribir "Ingrese letra: "
	Leer L
	
	Segun L Hacer
		"a":
			Escribir "Es vocal"
		"e":
			Escribir "Es vocal"
		"i":
			Escribir "Es vocal"
		"o":
			Escribir "Es vocal"
		"u":
			Escribir "Es vocal"
		De Otro Modo:
			Escribir "Es una consonante"
	Fin Segun
	
	
FinAlgoritmo
