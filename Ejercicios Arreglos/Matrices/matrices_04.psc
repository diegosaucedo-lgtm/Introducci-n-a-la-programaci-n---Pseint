Algoritmo ejercicio_04
	
//	Rellenar en un subproceso una matriz cuadrada con números aleatorios salvo en la diagonal
//	principal, la cual debe rellenarse con ceros. Una vez llena la matriz debe generar otro subproceso
//	para imprimir la matriz.
	
	
	
	Definir m,t,i,j Como Entero
	
	t=Aleatorio(2,10)
	Dimension m[t,t]
	
	llenarMatriz(m,t)
	
	imprimirMatriz(m,t)

FinAlgoritmo

SubProceso llenarMatriz(m,t)
	
	Definir i,j Como Entero
	
	Para i=1 Hasta t Con Paso 1 Hacer
		Para j=1 Hasta t Con Paso 1 Hacer
			Si i=j Entonces
				m[i,j]=0
			SiNo
				m[i,j]=Aleatorio(1,9)
			Fin Si
		Fin Para
	Fin Para
	
FinSubProceso

SubProceso imprimirMatriz(m,t)
	
	Definir i,j Como Entero
	
	Para i=1 Hasta t Con Paso 1 Hacer
		Para j=1 Hasta t Con Paso 1 Hacer
			Si i=j Entonces
				Escribir m[i,j]," " Sin Saltar
			SiNo
				Escribir m[i,j]," " Sin Saltar
			Fin Si
		Fin Para
		Escribir " "
	Fin Para
FinSubProceso




