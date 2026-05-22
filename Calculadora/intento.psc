Algoritmo sin_titulo
	
	Escribir "-------CALCULADORA------------"
	Escribir "------------------------------"

	
	Escribir ""
	teclasCalculadora()
	
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
	teclas[4,3]=" p "
	teclas[4,4]=" / "
	
	Para i=1 Hasta 4 Con Paso 1 Hacer
		Para j=1 Hasta 4 Con Paso 1 Hacer
			Escribir teclas[i,j] Sin Saltar
		Fin Para
		Escribir ""
	Fin Para
FinSubProceso

SubProceso ingresoNumeros()
	
	Definir num,i Como Entero
	
	Dimension num[10]
	
	j=0
	Para i=1 Hasta 10 Con Paso 1 Hacer
		Si i=1 Entonces
			num[i]=0
			Escribir num[i] Sin Saltar
		SiNo
			j=j+1
			num[i]=j
			Escribir "  ",num[i] Sin Saltar
		Fin Si
	Fin Para

FinSubProceso







