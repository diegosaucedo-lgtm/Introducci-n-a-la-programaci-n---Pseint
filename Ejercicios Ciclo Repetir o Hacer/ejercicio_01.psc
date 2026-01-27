Algoritmo ejercicio_01
	
//	Teniendo en cuenta que la clave es "eureka", escribir un programa que nos pida ingresar
//	una clave. Sólo se cuenta con 3 intentos para acertar, si fallamos los 3 intentos se deberá
//	mostrar un mensaje indicándonos que hemos agotado esos 3 intentos. Si acertamos la
//	clave se deberá mostrar un mensaje que indique que se ha ingresado al sistema
//	correctamente.

	Definir clave Como Caracter
	Definir cont Como Entero
	
	
	cont=0
	Repetir
		Escribir "Ingresa la clave: " Sin Saltar
		Leer clave
		cont=cont+1
	Hasta Que clave="Eureka" o cont>=3 o clave="eureka"
	
	
FinAlgoritmo
