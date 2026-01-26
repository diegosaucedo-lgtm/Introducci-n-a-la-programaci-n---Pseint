Algoritmo ejercicio_15
	
//	15. Mostrar el área y perímetro de un rombo. 
	
	Definir d_mayor, d_menor, area, perimetro Como Real
	
	Escribir "Calcular área y perímetro de un rombo"
	Escribir "Ingresa la diagonal mayor: " Sin Saltar
	Leer d_mayor
	Escribir "Ingresa la diagonal menor: " Sin Saltar
	Leer d_menor
	
	area=(d_mayor*d_menor)/2
	perimetro=2*raiz((d_mayor^2+d_menor^2))
	
	Escribir "El área del rombo es ",area
	Escribir "El perímetro del rombo es ",perimetro
	

FinAlgoritmo
