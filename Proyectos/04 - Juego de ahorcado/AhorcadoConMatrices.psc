Algoritmo AhorcadoConMatrices
	Definir tablero, palab, palab_blanco, palab_ingr, letra_ingr Como Caracter
	Definir errores,i,j, k, l, long, aciertos, contador_errores, contador_aciertos Como Entero
	
    Dimension tablero[7,7]
	
    // Inicializar la matriz con espacios en blanco
	// Se usa para dibujar poco a poco al ahorcado
    Para i <- 1 Hasta 7 Con Paso 1 Hacer
        Para j <- 1 Hasta 7 Con Paso 1 Hacer
            tablero[i, j] <- " "
        FinPara
    FinPara
	
	//Comienzo del juego
	Escribir "JUEGO DEL AHORCADO"
	Escribir "Ingresa la palabra que se debe adivinar: "
	Leer palab
	
	Esperar tecla
	Borrar Pantalla
	
	long=Longitud(palab)
	Dimension palab_blanco[long]
	
	Para l=1 Hasta long Con Paso 1 Hacer
		palab_blanco[l]="___"
	Fin Para
	
	
	contador_aciertos=0
	contador_errores=0
	Repetir
		Esperar 5 Segundos
		Borrar Pantalla
		Escribir "JUEGO DEL AHORCADO"
		Escribir "################################"
		Escribir ""
		
		mostrarPalabra(palab_blanco, long)
		
		Escribir ""
		Escribir "Ingresar letra o adivina la palabra: " Sin Saltar
		Leer letra_ingr
		
		aciertos=0
		
		Si letra_ingr=palab Entonces
			contador_aciertos=5
		SiNo
			Para j=1 Hasta long Con Paso 1 Hacer
				Si letra_ingr=SubCadena(palab,j,j) Entonces
					palab_blanco[j]=letra_ingr
					Esperar 2 segundos
					Borrar Pantalla
					mostrarPalabra(palab_blanco, long)
					aciertos=aciertos+1
					contador_aciertos=contador_aciertos+1
				Fin Si
			Fin Para
			
			Si aciertos=0 Entonces
				// Simulación de errores
				Esperar 3 Segundos
				BorrarPantalla
				contador_errores=contador_errores+1
				DibujarAhorcado(contador_errores,tablero)
				MostrarTablero(tablero)
				Escribir "Errores: ", contador_errores
				
			Fin Si
			
		Fin Si
		
	Hasta Que contador_errores=10 o contador_aciertos=5
	
	
	Esperar 5 Segundos
	Borrar Pantalla
	Escribir "JUEGO DEL AHORCADO"
	Escribir "################################"
	Escribir ""
	Escribir "La palabra era ", palab
	
	Si contador_aciertos=5 Entonces
		Escribir "FELICITACIONES GANASTE"
	SiNo
		Escribir "PERDISTE"
		Escribir "LO SENTIMOS"
	Fin Si




FinAlgoritmo
// Función para mostrar el tablero
Subproceso MostrarTablero(tablero)
	Definir i, j Como Entero
	Para i <- 1 Hasta 7 Con Paso 1 Hacer
		Para j <- 1 Hasta 7 Con Paso 1 Hacer
			Escribir Sin Saltar tablero[i, j], " "
		FinPara
		Escribir ""
	FinPara
FinSubproceso

// Función para dibujar parte del ahorcado según el número de errores
Subproceso DibujarAhorcado(contador_errores,tablero)
	Segun contador_errores Hacer
		1:  // Dibujar la base del ahorcado
			tablero[7, 2] <- "_"
			tablero[7, 3] <- "_"
			tablero[7, 4] <- "_"
			tablero[7, 5] <- "_"
			tablero[7, 6] <- "_"
		2:  // Dibujar el poste vertical
			tablero[6, 2] <- "|"
			tablero[5, 2] <- "|"
			tablero[4, 2] <- "|"
			tablero[3, 2] <- "|"
			tablero[2, 2] <- "|"
		3:  // Dibujar el brazo horizontal
			tablero[2, 3] <- "_"
			tablero[2, 4] <- "_"
			tablero[2, 5] <- "_"
		4:  // Dibujar la cuerda
			tablero[3, 5] <- "|"
		5:  // Dibujar la cabeza
			tablero[4, 5] <- "O"
		6:  // Dibujar el cuerpo
			tablero[5, 5] <- "|"
		7:  // Dibujar el brazo izquierdo
			tablero[5, 4] <- "/"
		8:  // Dibujar el brazo derecho
			tablero[5, 6] <- "\"
		9:  // Dibujar la pierna izquierda
			tablero[6, 4] <- "/"
		10: // Dibujar la pierna derecha
			tablero[6, 6] <- "\"
	FinSegun
FinSubproceso

SubProceso mostrarPalabra(palab_blanco, long)
	
	Definir i como entero
	
	Para i=1 Hasta long Con Paso 1 Hacer
		Escribir palab_blanco[i],"  "Sin Saltar
	Fin Para
	Escribir ""

FinSubProceso

