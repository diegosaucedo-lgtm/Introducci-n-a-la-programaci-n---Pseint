Algoritmo ejercicio_09
	
//	9. Crear un programa que solicite al usuario que ingrese el precio de un producto al inicio del 
//	año, y el precio del mismo producto al finalizar el año. El programa debe calcular cuál fue el 
//	porcentaje de aumento que tuvo ese producto en el año y mostrarlo por pantalla.
	
	
	Definir precio_i,precio_f,aumento,porcentaje Como Real
	
	Escribir "Calcular el porcentaje de aumento del precio de un producto"
	Escribir 'Ingresa el precio del producto al inicio del año : ' Sin Saltar
	Leer precio_i
	Escribir 'Ingresa el precio del producto al final del año : ' Sin Saltar
	Leer precio_f
	
	aumento <- precio_f-precio_i
	porcentaje <- (aumento/precio_i)*100
	
	Escribir 'El precio aumento un ',porcentaje,'%'
	
	
FinAlgoritmo
