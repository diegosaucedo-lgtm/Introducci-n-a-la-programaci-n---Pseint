Algoritmo colasPseint
	
	//FIFO
//La cola funciona como una fila de banco: el primero en llegar es el primero en ser atendido. 
//		Operaciones: Encolar (Insertar al final), Desencolar (Quitar del frente).
//		Control: Variables frente y final (o atras). 
	
	
	Dimension cola[5]
	Definir cola, frente, final, opcion, dato, i Como Entero
	frente <- 1
	final <- 0
	
	Repetir
		Escribir "1. Encolar"
		Escribir "2. Desencolar"
		Escribir "3. Mostrar cola "
		Escribir ""
		Leer opcion
		
		Segun opcion Hacer
			1:
				Si final < 5 Entonces
					Escribir "Ingrese valor:"
					Leer dato
					final <- final + 1
					cola[final] <- dato
				Sino
					Escribir "Cola Llena"
				FinSi
				
				Esperar 3 Segundos
				Limpiar Pantalla
			2:
				Si frente <= final Entonces
					Escribir "Desencolado: ", cola[frente]
					cola[frente]=0
					frente <- frente + 1
				Sino
					Escribir "Cola Vacia"
					//Opcional: Reiniciar punteros
					
				FinSi
				
				Esperar 3 Segundos
				Limpiar Pantalla
			3:
				
				Para i=1 Hasta final Con Paso 1 Hacer
					Escribir cola[i]," " Sin Saltar
				Fin Para
				
				Esperar 10 Segundos
				Limpiar Pantalla
				
		FinSegun
	Hasta Que opcion = 4

	
	

	
	
FinAlgoritmo
