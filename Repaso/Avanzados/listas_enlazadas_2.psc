Algoritmo listas_enlazadas
	
	Definir valores, punteros,i, j, k, dato, cabeza, libre, indice Como Entero
	Definir tabla_1, nombre Como Caracter
	
	Dimension valores[5]
	Dimension punteros[5]
	Dimension nombre[3]
	nombre[0]="Indice"
	nombre[1]="Puntero"
	nombre[2]="Valor"
	Dimension tabla_1[6,3]
	
	// Inicializar lista vacía
    cabeza <- -1
    libre <- 0
	
	Para i=0 Hasta 3 Con Paso 1 Hacer
		punteros[i]=i+1
		valores[i]=0
	Fin Para
	punteros[4]=-1
	valores[4]=0
	
	Escribir "PUNTEROS"
	mostrarTabla(punteros, nombre, tabla_1, valores)
	

	Para k=0 Hasta 4 Con Paso 1 Hacer
		Escribir "Cabeza: ", cabeza
		Escribir "Libre: ", libre
		Escribir "Ingresar nuevo dato"
		leer dato
		
		indice=libre
		libre=punteros[libre]
		
		valores[indice]=dato
		punteros[indice]=cabeza
		
		cabeza=indice
		
		Escribir "PUNTEROS"
		mostrarTabla(punteros, nombre, tabla_1, valores)
		
	Fin Para
	
FinAlgoritmo

SubProceso mostrarTabla(punteros, nombre, tabla_1, valores)
	
	Definir i, j, k Como Entero
	
	Para j=0 Hasta 5 Con Paso 1 Hacer
		Si j=0 Entonces
			Para i=0 Hasta 2 Con Paso 1 Hacer
				Escribir nombre[i], "  " Sin Saltar
			Fin Para
			Escribir ""
		SiNo
			k=j-1
			Para i=0 Hasta 2 Con Paso 1 Hacer
				Si i=0 Entonces
					Escribir k, "    " Sin Saltar
				SiNo
					Si i=1 Entonces
						Escribir "    ",punteros[k] Sin Saltar
					SiNo
						Escribir "       ",valores[k]
					Fin Si
				Fin Si
			Fin Para
		Fin Si
	Fin Para
	
FinSubProceso
