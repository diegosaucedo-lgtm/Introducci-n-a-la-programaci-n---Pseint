Algoritmo ejercicio_07
	
//	7. Escribir un programa que calcule el volumen de un cilindro. Para ello se deberá solicitar al 
//		usuario que ingrese el radio y la altura. Mostrar el resultado por pantalla.  
//		volumen = PI * radio^2 * altura
	
	
	Definir volumen, radio, altura Como Real
	
	Escribir "Cálculo del volumen de un cilindro"
	Escribir Sin Saltar "Ingresa el radio: "
	Leer radio
	Escribir Sin Saltar "Ingresa la altura: "
	Leer altura
	
	volumen=(radio^2)*altura*PI
	
	Escribir "El volumen del cilindro es ",volumen
	
	
FinAlgoritmo
