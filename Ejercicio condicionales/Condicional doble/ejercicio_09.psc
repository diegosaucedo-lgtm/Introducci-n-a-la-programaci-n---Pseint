Algoritmo ejercicio_09
	
	
//	Una tienda ofrece para los meses de septiembre, octubre y noviembre un descuento del
//		10% sobre el total de la compra que realiza un cliente. Solicitar al usuario que ingrese un
//		mes y el importe de la compra. El programa debe calcular cuál es el monto total que se
//		debe cobrar al cliente e imprimirlo por pantalla.
	
	Definir mes Como Caracter
	Definir compra, descuento, final Como Real
	
	Escribir "Ingresa el mes en minúscula: "
	Leer mes
	
	
	Si mes="septiembre" o mes="octubre" o mes="noviembre" Entonces
		
		Escribir "Ingresa el precio de la compra: "
		Leer compra
		
		descuento=0.10*compra
		final=compra-descuento
		
		Escribir "Mes: ",mes
		Escribir "Precio de compra: ",compra
		Escribir "Descuento: ",descuento
		Escribir "Precio final: ",final
		
	SiNo
		Escribir "No es el mes para realizar el descuento"
	Fin Si
	
	
FinAlgoritmo
