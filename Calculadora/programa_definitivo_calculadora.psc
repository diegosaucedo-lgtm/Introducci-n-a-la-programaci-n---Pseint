Algoritmo programa_definitivo_calculadora
	
	
	
	Escribir "-------CALCULADORA------------"
	Escribir "------------------------------"
	Escribir ""
	teclasCalculadora()
	Escribir ""
	leer_escribir_botones()

	

FinAlgoritmo

SubProceso teclasCalculadora()
	Definir teclas Como Caracter
	Definir i,j Como Entero
	
	Dimension teclas[4,4]
	
	teclas[1,1]=" 1 "
	teclas[1,2]=" 2 "
	teclas[1,3]=" 3 "
	teclas[1,4]=" + "
	teclas[2,1]=" 4 "
	teclas[2,2]=" 5 "
	teclas[2,3]=" 6 "
	teclas[2,4]=" - "
	teclas[3,1]=" 7 "
	teclas[3,2]=" 8 "
	teclas[3,3]=" 9 "
	teclas[3,4]=" x "
	teclas[4,1]=" . "
	teclas[4,2]=" 0 "
	teclas[4,3]=" = "
	teclas[4,4]=" / "
	
	Para i=1 Hasta 4 Con Paso 1 Hacer
		Para j=1 Hasta 4 Con Paso 1 Hacer
			Escribir teclas[i,j] Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso

SubProceso leer_escribir_botones()
	
	Definir boton,acum como caracter
	
	leer boton 
	
	acum=""
	Mientras boton<>"=" Hacer
		Segun boton Hacer
			"1":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
			"2":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
			"3":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
			"4":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
			"5":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
			"6":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
			"7":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton 
			"8":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton 
			"9":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
			"0":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
			"+":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
			"-":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
			"*":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
			"/":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
			".":
				Limpiar Pantalla
				acum=acum+boton
				Escribir ""
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
			De Otro Modo:
				Limpiar Pantalla
				Escribir acum
				Escribir ""
				teclasCalculadora
				leer boton
		Fin Segun
	Fin Mientras
	
	Escribir ""
	calcular_operaciones(acum, boton)	
	
FinSubProceso


SubProceso calcular_operaciones(acum, boton)
	
	Definir operandos Como Real
	Definir operadores Como Caracter
	Definir posicion_operadores Como entero 
	Definir i, cont_operadores,cont_pos, cont_operandos, j Como Entero
	Definir cal1 Como Real
	
	Dimension operandos[100]
	Dimension operadores[100]
	Dimension posicion_operadores[100]
	
	
	Si boton="=" Entonces
		
		cont_operadores=0
		cont_operandos=0
		cont_pos=0
		Para i=1 Hasta Longitud(acum) Con Paso 1 Hacer
			
			Si SubCadena(acum,i,i)="+" o SubCadena(acum,i,i)="-" o SubCadena(acum,i,i)="*" o SubCadena(acum,i,i)="/" Entonces
				cont_operadores=cont_operadores+1
				operadores[cont_operadores]=SubCadena(acum,i,i)
				
				cont_pos=cont_pos+1
				posicion_operadores[cont_pos]=i
				
				cont_operandos=cont_operandos+1
				Si cont_operandos=1 Entonces
					operandos[cont_operandos]=ConvertirANumero(SubCadena(acum,1,i-1))
				SiNo
					operandos[cont_operandos]=ConvertirANumero(SubCadena(acum,posicion_operadores[cont_pos-1]+1,i-1))
				Fin Si
				
			Fin Si
			
		Fin Para
		
		operandos[cont_operandos+1]=ConvertirANumero(SubCadena(acum,posicion_operadores[cont_pos]+1,Longitud(acum)))
		
		cal1=0
		Para j=1 Hasta cont_operadores Con Paso 1 Hacer
			
			Si j=1 Entonces
				Segun operadores[j] Hacer
					"+":
						cal1=operandos[j]+operandos[j+1]
					"-":
						cal1=operandos[j]-operandos[j+1]
					"*":
						cal1=operandos[j]*operandos[j+1]
					"/":
						cal1=operandos[j]/operandos[j+1]
					De Otro Modo:
						
				Fin Segun
			SiNo
				Segun operadores[j] Hacer
					"+":
						cal1=cal1+operandos[j+1]
					"-":
						cal1=cal1-operandos[j+1]
					"*":
						cal1=cal1*operandos[j+1]
					"/":
						cal1=cal1/operandos[j+1]
					De Otro Modo:
						
				Fin Segun
			Fin Si
			
		Fin Para
		
		
		
	Fin Si
	
	Limpiar Pantalla
	Escribir acum," = ",cal1
	
FinSubProceso



