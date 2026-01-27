Algoritmo ejercicio_13
	
//	13. Hacer un programa que calcule el salario de un empleado, si se descuenta el 20% de su 
//		salario bruto. 
	
	Definir s_bruto, s_neto, descuento Como Real
	
	Escribir "Calcular salario de un empleado"
	Escribir "Ingresa el salario en brutos que recibe el empleado: "
	Leer s_bruto
	
	descuento=s_bruto*(20/100)
	s_neto=s_bruto-descuento
	
	Escribir "Gana en total ",s_neto
	
	
FinAlgoritmo
