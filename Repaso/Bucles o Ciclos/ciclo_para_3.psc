Algoritmo ciclo_para_1

		Definir cantidad, num, may, i Como Entero
		
		Escribir "Ingrese la cantidad de números a comparar:"
		Leer cantidad
		
		may <- 0  // Inicializamos la variable mayor con un valor muy pequeño
		
		Para i <- 1 Hasta cantidad Con Paso 1 Hacer
			Escribir "Ingrese el número ", i, ":"
			Leer num
			
			Si num > may Entonces
				may <- num
			FinSi
			
		FinPara
		
		Escribir "El número mayor es: ", may
		
		
FinAlgoritmo

	
	
	
	
	
	
	
	
	
	
	
	
