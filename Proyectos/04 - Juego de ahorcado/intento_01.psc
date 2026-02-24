
Algoritmo juegoAhorcado
	Definir palabras, letra,rayas,acumulador Como Caracter
	Definir actualizar Como Logico
	Definir nP, lP,i,contAciertos, contErrores Como Entero
	Dimension palabras[5]
	acumulador=""
	palabras[1]="Arroz"
	palabras[2]="Zapato"
	palabras[3]="Estados Unidos"
	palabras[4]="Dios"
	palabras[5]="paralelipípedo"
	
	nP=Aleatorio(1,5)
	
	lP=Longitud(palabras[nP])
	
	Dimension rayas[1,lP]
	
	Para i=1 Hasta lP Con Paso 1 Hacer
		rayas[1,i]="_ "
	Fin Para
	
	
	contAciertos=0
	contErrores=0

	Definir tablero Como Caracter
	Definir k,l Como Entero
	
    Dimension tablero[7,7]
	
    // Inicializar la matriz con espacios en blanco
    Para k <- 1 Hasta 7 Con Paso 1 Hacer
        Para l <- 1 Hasta 7 Con Paso 1 Hacer
            tablero[k, l] <- " "
        FinPara
    FinPara
	
	
	
	
	Escribir "*****Bienvenido al juego del ahorcado*****"
	Escribir "------------------------------------------"
	Escribir "La palabra es: "
	
	mostrarRayas(rayas,lP)
	
	Escribir ""
	Escribir "Adivina la letra o la palabra: " sin saltar
	Leer letra
	
	adivinarJuego(acumulador,tablero, contAciertos, contErrores,rayas,letra,palabras,lP,nP)
FinAlgoritmo

SubAlgoritmo  mostrarRayas(rayas,lP)
	
	Definir i Como Entero
	
	Para i=1 Hasta lP Con Paso 1 Hacer
		Escribir rayas[1,i] Sin Saltar
	Fin Para
	
FinSubAlgoritmo

SubAlgoritmo adivinarJuego (acumulador,tablero,contAciertos, contErrores, rayas,letra,palabras,lP,nP)
	Definir longL,i Como Entero
	
	longL=Longitud(letra)

	
	Segun longL Hacer
		1:
			Para i=1 Hasta lP Con Paso 1 Hacer
				Si letra=SubCadena(palabras[nP],i,i) Entonces
					rayas[1,i]=letra
					contAciertos=contAciertos+1
					acumulador=acumulador+letra
				Fin Si
			Fin Para
			
			Si contAciertos>=1 y contAciertos<lP Entonces
				Limpiar Pantalla
				Escribir "*****Bienvenido al juego del ahorcado*****"
				Escribir "------------------------------------------"
				Escribir "La palabra es: "
				
				mostrarRayas(rayas,lP)
				
				Escribir ""
				Escribir "Número de aciertos: ",contAciertos
				Escribir " "
				ahorcadoDibujo(tablero,contErrores)
				Si contErrores<=10 Entonces
					Escribir "Adivina la letra o la palabra: " sin saltar
					Leer letra
					adivinarJuego(acumulador,tablero,contAciertos, contErrores,rayas,letra,palabras,lP,nP)
				SiNo
					contErrores=20
					Escribir "Perdiste"
				Fin Si
			SiNo
				Si contAciertos=lP y acumulador=palabras[nP] Entonces
					Escribir "Ganaste"
					Escribir "Aciertos: ",contAciertos
					Escribir "Errores: ",contErrores
				Sino
					Escribir "Perdiste"
					Escribir "Aciertos: ",contAciertos
					Escribir "Errores: ",contErrores
				FinSi	
			FinSi
			
			contErrores=contErrores+1
			
			Limpiar Pantalla
			Escribir "*****Bienvenido al juego del ahorcado*****"
			Escribir "------------------------------------------"
			Escribir "La palabra es: "
			
			mostrarRayas(rayas,lP)
			
			Escribir ""
			Escribir "Número de aciertos: ",contAciertos
			Escribir ""
			ahorcadoDibujo(tablero, contErrores)
			Si contErrores<=10 Entonces
				Escribir "Adivina la letra o la palabra: " sin saltar
				Leer letra
				adivinarJuego(acumulador,tablero,contAciertos, contErrores,rayas,letra,palabras,lP,nP)
			SiNo
				contErrores=20
				Escribir "Perdiste"
			Fin Si
			
		lP:
			
			Si letra=palabras[nP] Entonces
				contAciertos=contAciertos+1
				Limpiar Pantalla
				Escribir "*****Bienvenido al juego del ahorcado*****"
				Escribir "-------------------------------------------"
				Escribir "La palabra es: "
				Escribir palabras[nP]
				Escribir "-------------------------------------------"
				Escribir "¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡¡Felicidades!!!!!!!!!!!!!!!"
				Escribir "Número de aciertos: ",contAciertos
				Escribir "Número de errores: ",contErrores
			SiNo
				contErrores=contErrores+1
				
				Limpiar Pantalla
				Escribir "*****Bienvenido al juego del ahorcado*****"
				Escribir "------------------------------------------"
				Escribir "La palabra es: "
				
				mostrarRayas(rayas,lP)
				
				Escribir ""
				Escribir "Número de aciertos: ",contAciertos
				Escribir ""
				ahorcadoDibujo(tablero, contErrores)
				Si contErrores<=10 Entonces
					Escribir "Adivina la letra o la palabra: " sin saltar
					Leer letra
					adivinarJuego(acumulador,tablero,contAciertos, contErrores,rayas,letra,palabras,lP,nP)
				SiNo
					contErrores=20
					Escribir "Perdiste"
				Fin Si
			Fin Si
			
		De Otro Modo:
			contErrores=contErrores+1
			Limpiar Pantalla
			Escribir "*****Bienvenido al juego del ahorcado*****"
			Escribir "------------------------------------------"
			Escribir "La palabra es: "
			
			mostrarRayas(rayas,lP)
			
			Escribir ""
			Escribir "Número de aciertos: ",contAciertos
			Escribir ""
			ahorcadoDibujo(tablero,contErrores)
			
			Si contErrores<=10 Entonces
				Escribir "Adivina la letra o la palabra: " sin saltar
				Leer letra
				adivinarJuego(acumulador,tablero,contAciertos, contErrores,rayas,letra,palabras,lP,nP)
			SiNo
				contErrores=20
				Escribir "Perdiste"
			Fin Si
			
	Fin Segun
	
FinSubAlgoritmo

SubAlgoritmo ahorcadoDibujo(tablero, contErrores)
	Definir k,l Como Entero
	// Simulación de errores
	
	//Dibujar ahoracado
	Segun contErrores Hacer
		1:  // Dibujar la base del ahorcado
			tablero[7, 2] = "_"
			tablero[7, 3] = "_"
			tablero[7, 4] = "_"
			tablero[7, 5] = "_"
			tablero[7, 6] = "_"
		2:  // Dibujar el poste vertical
			tablero[6, 2] = "|"
			tablero[5, 2] = "|"
			tablero[4, 2] = "|"
			tablero[3, 2] = "|"
			tablero[2, 2] = "|"
		3:  // Dibujar el brazo horizontal
			tablero[2, 3] = "_"
			tablero[2, 4] = "_"
			tablero[2, 5] = "_"
		4:  // Dibujar la cuerda
			tablero[3, 5] = "|"
		5:  // Dibujar la cabeza
			tablero[4, 5] = "O"
		6:  // Dibujar el cuerpo
			tablero[5, 5] = "|"
		7:  // Dibujar el brazo izquierdo
			tablero[5, 4] = "/"
		8:  // Dibujar el brazo derecho
			tablero[5, 6] = "\"
		9:  // Dibujar la pierna izquierda
			tablero[6, 4] = "/"
		10: // Dibujar la pierna derecha
			tablero[6, 6] = "\"
			//Mostrar tablero
	FinSegun
	
	Para k <- 1 Hasta 7 Con Paso 1 Hacer
		Para l <- 1 Hasta 7 Con Paso 1 Hacer
			Escribir Sin Saltar tablero[k, l], " "
		FinPara
		Escribir ""
	FinPara
	Escribir "Errores: ", contErrores

	
FinSubAlgoritmo
