Algoritmo ejercicio_03
	
	
//	Realizar un programa que solicite al usuario su código de usuario (un número entero
//	mayor que cero) y su contraseña numérica (otro número entero positivo). El programa no le
//	debe permitir continuar hasta que introduzca como código 1024 y como contraseña 4567.
//	El programa finaliza cuando ingresa los datos correctos.
	
	
	Definir codigo, clave Como Entero
	
	Repetir
		Escribir "Ingresar el codigo del usuario: "
		Leer codigo
		
		Escribir "lngresar la contraseña: "
		Leer clave
		
	Hasta Que Codigo=1024 y clave=4567
	
	Escribir "Correcto"
	
	
FinAlgoritmo
