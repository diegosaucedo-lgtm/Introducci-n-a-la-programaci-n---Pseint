Algoritmo ejercicio_06
	
//	6. Solicitar al usuario que ingrese la base y altura de un rectángulo, y calcular y mostrar por 
//	pantalla el área y perímetro del mismo 
//	area = base * altura 
//	perimetro = 2 * altura + 2 * base
	
	Definir base, altura, area, perimetro Como Real
	
	Escribir "Cálculo del área y perímetro de un rectángulo"
	Escribir Sin Saltar "Ingresa la base: "
	Leer  base
	Escribir Sin Saltar "Ingresa la altura: "
	Leer altura
	
	area=base*altura
	perimetro=2*(altura+base)
	
	Escribir "El área del rectángulo es ",area
	Escribir "El perímetro del rectángulo es ",perimetro
	
FinAlgoritmo
