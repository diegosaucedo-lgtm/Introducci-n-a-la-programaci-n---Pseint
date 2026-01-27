Algoritmo ejercicio_02
	
//	Escriba un programa para obtener el grado de eficiencia de un operario de una fábrica de
//		tornillos, de acuerdo a las siguientes dos condiciones que se le imponen para un período
//		de prueba:
//			- Producir menos de 200 tornillos defectuosos.
//			- Producir más de 10000 tornillos sin defectos.
//		    - El grado de eficiencia se determina de la siguiente manera:
//			- Si no cumple ninguna de las condiciones, grado 5.
//			- Si sólo cumple la primera condición, grado 6.
//			- Si sólo cumple la segunda condición, grado 7.
//			- Si cumple las dos condiciones, grado 8
	
//		Nota: para trabajar este ejercicio de manera prolija, ir probando cada inciso que pide el
//		ejercicio. No hacer todos al mismo tiempo y después probar.
	
	Definir p1,p2 Como Entero
	
	Escribir "Introduce la produccion de tornillos defectuosos: "
	Leer p1
	
	Escribir "Introduce la produccion de tornillos sin defectos: "
	Leer p2
	
	Si p1<200 y p2>10000 Entonces
		Escribir "La eficiencia es de grado 8 "
	SiNo
		Si p1>=200 y p2>10000 Entonces
			Escribir "La eficiencia es de grado 7"
		SiNo
			Si p1<200 y p2<=10000 Entonces
				Escribir "La eficiencia es de grado 6"
			SiNo
				Escribir "La eficiencia es de grado 5"
			Fin Si
		Fin Si
	Fin Si

FinAlgoritmo
