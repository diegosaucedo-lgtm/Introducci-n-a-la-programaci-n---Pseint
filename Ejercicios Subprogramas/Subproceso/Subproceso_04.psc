
Algoritmo Subproceso_04
	
	
//	Crear una subproceso llamada "Login", que recibe un nombre de usuario y una contraseña y que
//	devuelve Verdadero si el nombre de usuario es "usuario1" y si la contraseña es "asdasd". Además,
//	el subproceso calculara el número de intentos que se ha usado para loguearse, tenemos solo 3
//	intentos, si nos quedamos sin intentos la función devolverá Falso.
	
	Definir us, cl Como Caracter
	
	Escribir "Ingresa el nombre del usuario: "
	Leer us
	
	Escribir "Ingresa la contraseña: "
	Leer cl
	
	login(us,cl)
	
FinAlgoritmo

SubProceso login (us,cl)
	
	Definir cont Como Entero
	
	cont=1
	
	Si us="usuario1" y cl="asdasd" Entonces
		Escribir "Verdadero"
	SiNo
		Repetir
			cont=cont+1
			Escribir "Ingresa el nombre del usuario: "
			Leer us
			
			Escribir "Ingresa la contraseña: "
			Leer cl
			
		Hasta Que us="usuario1" y cl="asdasd" o cont=3
	Fin Si
	
	Si cont=3 Entonces
		Escribir "FALSO"
	Fin Si
	
	FinSubProceso
	
