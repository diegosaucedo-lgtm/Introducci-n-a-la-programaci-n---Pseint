Algoritmo ejercicio_01
	
//	1. Conocido el número en matemática PI, pedir al usuario que ingrese el valor del radio de 
//	una circunferencia y calcular y mostrar por pantalla el área y perímetro. Recuerde que para 
//	calcular el área y el perímetro se utilizan las siguientes fórmulas:  
//		area = PI * radio^2
//		perimetro = 2 * PI * radio 
	
	Definir radio, perimetro, area Como Real
	
	Escribir "Cálculo del área y el perímetro de una circunferencia"
	Escribir "Ingresar el radio de la cirucunferencia: "
	Leer radio 
	
	perimetro=radio*PI*2
	area=(radio^2)*PI
	
	Escribir "El área de la cirunferencia es ",area
	Escribir "El perímetro de la cirunferencia es ",perimetro
	
FinAlgoritmo
