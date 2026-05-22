Algoritmo programa_de_calculadora
	
	Definir op Como caracter
	
	Escribir "     CALCULADORA      "
	Escribir "----------------------"
	Escribir "Botones"
	Escribir ""
	botonC()
	
	Repetir
		leer op
		Segun op Hacer
			"1":
				Escribir "1" 
			"2":
				Escribir  "2" 
			"3":
				Escribir Sin Saltar "3" 
			"4":
				Escribir Sin Saltar "4" 
			"5":
				Escribir Sin Saltar "5" 
			"6":
				Escribir Sin Saltar "6" 
			"7":
				Escribir Sin Saltar "7" 
			"8":
				Escribir Sin Saltar "8" 
			"9":
				Escribir Sin Saltar "9" 
			"0":
				Escribir Sin Saltar "0" 
			"+":
				Escribir Sin Saltar " + " 
			"-":
				Escribir Sin Saltar " - " 
			"*":
				Escribir Sin Saltar " * " 
			"/":
				Escribir Sin Saltar " / " 
			"B":
				Escribir Sin Saltar "    " 
			De Otro Modo:
				Escribir ""
		Fin Segun
	Hasta Que op="=" 
	
	
	
FinAlgoritmo

SubProceso botonC ()
	
	Definir botones Como Caracter
	Definir i,j Como Entero
	Dimension botones[4,4]
	
	Para i=1 Hasta 4 Con Paso 1 Hacer
		Para j=1 Hasta 4 Con Paso 1 Hacer
			Si i=1 y j<=3 Entonces
				botones[i,j]=ConvertirATexto(j)
				Escribir Sin Saltar botones[i,j]," "
			SiNo
				Si i=1 y j=4 Entonces
					botones[i,j]=" + "
					Escribir Sin Saltar botones[i,j]
				Fin Si
			Fin Si
			
			Si i=2  y j<=3 Entonces
				botones[i,j]=ConvertirATexto(i+j+1)
				Escribir Sin Saltar botones[i,j]," "
			SiNo
				Si i=2 y j=4 Entonces
					botones[i,j]=" - "
					Escribir Sin Saltar botones[i,j]
				Fin Si
			Fin Si
			
			
			Si i=3 y j<=3 Entonces
				botones[i,j]=ConvertirATexto(i+j+3)
				Escribir Sin Saltar botones[i,j]," "
			SiNo
				Si i=3 y j=4 Entonces
					botones[i,j]=" x "
					Escribir Sin Saltar botones[i,j]
				Fin Si
			Fin Si
			
			Si i=4 Entonces
				Si j=1 Entonces
					botones[i,j]="C "
					Escribir Sin Saltar botones[i,j]
				SiNo
					Si j=2 Entonces
						botones[i,j]="0 "
						Escribir Sin Saltar botones[i,j]
					SiNo
						Si j=3 Entonces
							botones[i,j]="= "
							Escribir Sin Saltar botones[i,j]
						SiNo
							botones[i,j]="/ "
							Escribir Sin Saltar botones[i,j]
						Fin Si
					Fin Si
					
				Fin Si
			Fin Si
			
		Fin Para
		Escribir ""
	Fin Para	
FinSubProceso



