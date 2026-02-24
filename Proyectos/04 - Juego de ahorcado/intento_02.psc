
Funcion Jugar <- seleccionPalabras(numSeleccion)
	
	Definir palabras, Jugar Como Caracter
	Dimension palabras[5]
	
	palabras[1]="Arroz"
	palabras[2]="Zapato"
	palabras[3]="Estados Unidos"
	palabras[4]="Dios"
	palabras[5]="paralelipípedo"
	
	Jugar=palabras[numSeleccion]
	
Fin Funcion


Algoritmo ahorcadoJuego
	//Inicializo las variables
	//1. Palabra a jugar
	// Escoger la palabra para empezar el juego
	Definir numSeleccion, longPalabra Como Entero
	Definir palabraJugar Como Caracter
	
	numSeleccion=Aleatorio(1,5]
	palabraJugar=seleccionPalabras(numSeleccion)//Esta funcion selecciona la palabra dentro de un arreglo
	
	//2. Variable para las rayas de las palabras
	//Establezco el numero de rayas en relacion con el número de las letras de la palabra seleccionada
	//en la funcion 
	longPalabra=Longitud(palabraJugar)
	
	Definir rayasPalabra Como Caracter
	Definir i Como Entero
	Dimension rayasPalabra[longPalabra]
	
	Para i=1 Hasta longPalabra Con Paso 1 Hacer
		rayasPalabra[i]=" _ "
	Fin Para
	
	//3. Variable para dibujar el ahorcado
	//Establezco un lienzo en blanco para empezar a dibujar al ahorcado. Uso matrices
	
	Definir ahorcado Como Caracter
	Definir k,l Como Entero
	
    Dimension ahorcado[7,7]
	// Inicializar la matriz con espacios en blanco
    Para k=1 Hasta 7 Con Paso 1 Hacer
        Para l=1 Hasta 7 Con Paso 1 Hacer
            ahorcado[k, l]=" "
        FinPara
    FinPara

	//4. Contador de aciertos y errores
	//Inicializar los contadores
	Definir contAciertos, contErrores Como Entero
	contAciertos=0
	contErrores=0
	
	//5.Acumulador de las letras
	Definir acum Como Caracter
	acum=""
	//Interfaz para que interactue el usuario"
	adivinarPalabra(rayasPalabra, longPalabra, palabraJugar, ahorcado, contAciertos, contErrores, acum)
	
FinAlgoritmo

SubProceso adivinarPalabra(rayasPalabra, longPalabra, palabraJugar, ahorcado, contAciertos, contErrores,acum)
	//Variable de entrada para que el usuario comience a jugar
	Definir letra Como Caracter
	
	Escribir "*****Bienvenido al juego del ahorcado*****"
	Escribir "------------------------------------------"
	Escribir "La palabra es: "
	
	dibujarRayas(rayasPalabra, longPalabra)
	
	Escribir ""
	dibujarAhorcado(ahorcado,contErrores)
	Escribir ""
	Escribir "Aciertos: ",contAciertos
	Escribir "Errores: ",contErrores
	Escribir "Adivina la letra o la palabra: " sin saltar
	Leer letra
	
	resultadoJuego(rayasPalabra, letra, longPalabra, palabraJugar, ahorcado, contAciertos, contErrores,acum)
	
FinSubProceso

SubProceso dibujarRayas(rayasPalabra,longPalabra)
	Definir i Como Entero
	Para i=1 Hasta longPalabra Con Paso 1 Hacer
		Escribir Sin Saltar rayasPalabra[i]
	Fin Para
FinSubProceso

SubProceso resultadoJuego(rayasPalabra, letra, longPalabra, palabraJugar, ahorcado, contAciertos, contErrores, acum)
	Definir longLetra,i,j,k,l Como Entero
	Definir cLetra Como Caracter
	
	cLetra=""
	longLetra=Longitud(letra)
	
	Segun longLetra Hacer
		1:
			Para i=1 Hasta longPalabra Con Paso 1 Hacer
				Si letra=SubCadena(palabraJugar,i,i) Entonces
					rayasPalabra[i]=letra
					contAciertos=contAciertos+1
					acum=acum+letra
				Fin Si
			Fin Para
			
			
			Si contAciertos>=1 y contAciertos<longPalabra Entonces
				Limpiar Pantalla 
				adivinarPalabra(rayasPalabra, longPalabra, palabraJugar, ahorcado, contAciertos, contErrores, acum)
			SiNo
				Si contAciertos=longPalabra Entonces
					//Las letras son reordenadas segun la palabra seleccionada para jugar
					Para k=1 Hasta contAciertos Con Paso 1 Hacer
						j=0
						Para l=1 Hasta contAciertos Con Paso 1 Hacer
							Si SubCadena(palabraJugar,k,k)=SubCadena(acum,l,l) Entonces
								j=j+1
								Si j=1 Entonces
									cLetra=cLetra+SubCadena(palabraJugar,k,k)
								SiNo
									cLetra=cLetra+""
								Fin Si
							Fin Si
						Fin Para
					Fin Para
					
					Si palabraJugar=cLetra Entonces
						Limpiar Pantalla
						Escribir "******GANASTE******"
						Escribir "La palabra era: " Sin Saltar 
						Escribir palabraJugar
						Escribir acum
						Escribir cLetra
					SiNo
						Limpiar Pantalla
						Escribir "******PERDISTE******"
						Escribir "La palabra era: " Sin Saltar 
						Escribir palabraJugar
						Escribir acum
						Escribir cLetra
					Fin Si
					
				SiNo
					Limpiar Pantalla
					contErrores=contErrores+1
					Si contErrores>10 Entonces
						Limpiar Pantalla
						Escribir "******PERDISTE******"
						Escribir "La palabra era: " Sin Saltar 
						Escribir palabraJugar
						Escribir acum
						Escribir cLetra
					SiNo
						adivinarPalabra(rayasPalabra, longPalabra, palabraJugar, ahorcado, contAciertos, contErrores, acum)
					Fin Si
				Fin Si
			Fin Si
			
		longPalabra:
			
			Si letra=palabraJugar Entonces
				Limpiar Pantalla
				Escribir "******GANASTE******"
				Escribir "La palabra era: " Sin Saltar 
				Escribir palabraJugar
			SiNo
				Limpiar Pantalla
				contErrores=contErrores+1
				Si contErrores>10 Entonces
					Limpiar Pantalla
					Escribir "******PERDISTE******"
					Escribir "La palabra era: " Sin Saltar 
					Escribir palabraJugar
					Escribir acum
					Escribir cLetra
				SiNo
					adivinarPalabra(rayasPalabra, longPalabra, palabraJugar, ahorcado, contAciertos, contErrores, acum)
				Fin Si
			Fin Si
			
		De Otro Modo:
			
			Limpiar Pantalla
			contErrores=contErrores+1
			Si contErrores>10 Entonces
				Limpiar Pantalla
				Escribir "******PERDISTE******"
				Escribir "La palabra era: " Sin Saltar 
				Escribir palabraJugar
				Escribir acum
				Escribir cLetra
			SiNo
				adivinarPalabra(rayasPalabra, longPalabra, palabraJugar, ahorcado, contAciertos, contErrores, acum)
			Fin Si
			
			
	Fin Segun

	
FinSubProceso


SubProceso dibujarAhorcado(ahorcado, contErrores)
	Definir k,l Como Entero
	
	//Dibujar ahorcado
	Segun contErrores Hacer
		0:
			ahorcado[1,1]=""
		1:  // Dibujar la base del ahorcado
			ahorcado[7, 2] = "_"
			ahorcado[7, 3] = "_"
			ahorcado[7, 4] = "_"
			ahorcado[7, 5] = "_"
			ahorcado[7, 6] = "_"
		2:  // Dibujar el poste vertical
			ahorcado[6, 2] = "|"
			ahorcado[5, 2] = "|"
			ahorcado[4, 2] = "|"
			ahorcado[3, 2] = "|"
			ahorcado[2, 2] = "|"
		3:  // Dibujar el brazo horizontal
			ahorcado[2, 3] = "_"
			ahorcado[2, 4] = "_"
			ahorcado[2, 5] = "_"
		4:  // Dibujar la cuerda
			ahorcado[3, 5] = "|"
		5:  // Dibujar la cabeza
			ahorcado[4, 5] = "O"
		6:  // Dibujar el cuerpo
			ahorcado[5, 5] = "|"
		7:  // Dibujar el brazo izquierdo
			ahorcado[5, 4] = "/"
		8:  // Dibujar el brazo derecho
			ahorcado[5, 6] = "\"
		9:  // Dibujar la pierna izquierda
			ahorcado[6, 4] = "/"
		10: // Dibujar la pierna derecha
			ahorcado[6, 6] = "\"
			//Mostrar tablero
	FinSegun
	
	Para k=1 Hasta 7 Con Paso 1 Hacer
		Para l=1 Hasta 7 Con Paso 1 Hacer
			Escribir Sin Saltar ahorcado[k, l], " "
		FinPara
		Escribir ""
	FinPara
	//Escribir "Errores: ", contErrores
FinSubProceso









