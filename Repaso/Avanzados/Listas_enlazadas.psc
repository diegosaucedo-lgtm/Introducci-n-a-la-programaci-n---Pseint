Algoritmo sin_titulo

	
	// Definimos tamaño máximo
	Definir dato, siguiente Como Entero
	
	//1. Arreglo que guarda los valores
	Dimension dato[10]
	//2. Arreglo que guarda las posiciones enlazadas
	Dimension siguiente[10]
	
	Definir cabeza, libre, datoNuevo, i, j, k, nuevo, actual Como Entero
	
	cabeza <- -1        // Lista vacía
	libre <- 0          // Primer espacio libre
	Escribir "LISTAS ENLAZADAS"
	Escribir "########################################"
	Escribir "Punteros"
	Escribir "Cabeza : ", cabeza
	Escribir "Libre : ", libre
	Escribir "################################################################"
	// Inicializar enlaces libres
	Escribir "Valos de los punteros: "
	Para i <- 0 Hasta 8 Hacer
		siguiente[i] <- i + 1
	FinPara
	siguiente[9] <- -1
	
	Para j=0 Hasta 9 Con Paso 1 Hacer
		Escribir j, " -> ", siguiente[j], "    " Sin Saltar
	Fin Para
	Escribir ""
	Escribir "################################################################"
	// Insertar 3 elementos al inicio
	Para i <- 1 Hasta 3 Hacer
		
		Escribir "Ingrese un numero:"
		Leer datoNuevo
		Escribir "Dato ingresado es : ", datoNuevo
		
		// Tomar nodo libre
		nuevo <- libre
		Escribir "Nuevo -> Libre"
		Escribir "Nuevo -> ", nuevo
		libre <- siguiente[libre]
		Escribir "Libre -> siguiente[Libre]"
		Escribir "Libre -> ", libre
		
		dato[nuevo] <- datoNuevo
		Escribir "Dato[",nuevo,"] : ", dato[nuevo]
		siguiente[nuevo] <- cabeza
		Escribir "siguiente[",nuevo,"] : ",siguiente[nuevo]
		Escribir "Cabeza -> nuevo"
		cabeza <- nuevo
		Escribir "Cabeza: ", cabeza
		Para j=0 Hasta 9 Con Paso 1 Hacer
			Escribir j, " -> ", siguiente[j], "   " Sin Saltar
		Fin Para
		Escribir ""
		
	FinPara
	
	// Mostrar lista
	Escribir "Elementos de la lista:"
	actual <- cabeza
	
	Mientras actual <> -1 Hacer
		Escribir dato[actual]
		actual <- siguiente[actual]
	FinMientras

FinAlgoritmo
