
Algoritmo PilasPSeInt
	
	//LIFO
//	La pila utiliza una estructura donde el último dato ingresado es el primero en salir, similar a una torre de platos. 
//		Operaciones: Apilar (Push), Desapilar (Pop).
//		Control: Una variable tope que indica la posición superior. 
	
	Definir pila, tope, opcion, dato, i Como Entero
	Dimension pila[5]
	tope <- 0 // Indica pila vacía
	
	Repetir
		Escribir "1. Apilar (Push)"
		Escribir "2. Desapilar (Pop)"
		Escribir "3. Mostrar pila"
		Leer opcion
		
		Segun opcion Hacer
			1:
				Si tope < 5 Entonces
					Escribir "Ingrese valor:"
					Leer dato
					tope <- tope + 1
					pila[tope] <- dato
				Sino
					Escribir "Pila Llena"
				FinSi
				
				Esperar 2 Segundos
				Limpiar Pantalla
			2:
				Si tope > 0 Entonces
					Escribir "Desapilado: ", pila[tope]
					tope <- tope - 1
				Sino
					Escribir "Pila Vacia"
				FinSi
				
				Esperar 2 Segundos
				Limpiar Pantalla
			3:
				Para i=1 Hasta tope Con Paso 1 Hacer
					Escribir "Entrada ",i,"° : ",pila[i]
				Fin Para
				
				Esperar 10 Segundos
				Limpiar Pantalla
		FinSegun
	Hasta Que opcion = 4
	
FinAlgoritmo


