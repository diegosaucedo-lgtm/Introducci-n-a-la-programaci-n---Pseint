Algoritmo Matriz_cuadradomágico
	
	
//	Una matriz mágica es una matriz cuadrada (tiene igual número de filas que de columnas) que
//	tiene como propiedad especial que la suma de las filas, las columnas y las diagonales es igual.
//		Por ejemplo:
//			2 7 6
//			9 5 1
//			4 3 8
//	En la matriz de ejemplo las sumas son siempre 15. Considere el problema de construir un algoritmo
//	que compruebe si una matriz de datos enteros es mágica o no, y en caso de que sea
//	mágica escribir la suma. Además, el programa deberá comprobar que los números introducidos
//	son correctos, es decir, están entre el 1 y el 9. El usuario ingresa el tamaño de la matriz
//	que no debe superar orden igual a 10.
	
	
	
	
	
	
	Definir m,t,i,j Como Entero
	
	Escribir "-------------------------------------------"
	Escribir "Cuadrado mágico"
	Escribir "Introduce el tamaño del cuadrado: " Sin Saltar
	Leer t
	
	Mientras t<=1 o t>10 Hacer
		Limpiar Pantalla
		Escribir "-------------------------------------------"
		Escribir "Cuadrado mágico"
		Escribir "Introduce de nuevo el tamaño del cuadro: " Sin Saltar
		Leer t
	Fin Mientras
	
	Escribir "Los valores deben comprender entre 1 y 9"
	
	
	Dimension m[t,t]
	Para i=1 Hasta t Con Paso 1 Hacer
		Para j=1 Hasta t Con Paso 1 Hacer
			Escribir "Ingresa el valor de la celda [",i,",",j,"] de la matriz: " Sin Saltar
			Leer m[i,j]	
			Mientras m[i,j]>9 Hacer
				Limpiar Pantalla
				Escribir "-------------------------------------------"
				Escribir "Cuadrado mágico"
				Escribir "El tamaño del cuadro mágico es ",t," x ",t
				Escribir "Los valores deben comprender entre 1 y 9"
				Escribir "Ingresa de nuevo el valor de la celda [",i,",",j,"] de la matriz: " Sin Saltar
				Leer m[i,j]
			Fin Mientras
			
		Fin Para
	Fin Para
	
	Escribir "Nuestro cuadrado mágico: "
	
	imprimirMatriz(m,t)
	
	Escribir "¿Es un cuadrado mágico?"
	
	sumMatriz(m,t)
	
FinAlgoritmo

SubProceso imprimirMatriz(m,t)
	Definir i,j Como Entero
	
	Para i=1 Hasta t Con Paso 1 Hacer
		Para j=1 Hasta t Con Paso 1 Hacer
			Escribir  m[i,j]," " Sin Saltar	
			
		Fin Para
		Escribir " "
	Fin Para
FinSubProceso

SubProceso sumMatriz(m,t)
	Definir i,j,sum1,sum2,sum3,sum4 Como Entero
	
	Para i=1 Hasta t Con Paso 1 Hacer
		Sum1=0
		Para j=1 Hasta t Con Paso 1 Hacer
			sum1=sum1+m[i,j]
		Fin Para
		Escribir "La suma de la ",i,"° fila es ",sum1
	Fin Para
	
	Para i=1 Hasta t Con Paso 1 Hacer
		Sum2=0
		Para j=1 Hasta t Con Paso 1 Hacer
			sum2=sum2+m[j,i]
		Fin Para
		Escribir "La suma de la ",i,"° columna es ",sum2
	Fin Para
	
	sum3=0
	Para i=1 Hasta t Con Paso 1 Hacer
		sum3=sum3+m[i,i]
	Fin Para
	Escribir "La suma de la diagonal principal es ",sum3
	
	sum4=0
	Para i=1 Hasta t Con Paso 1 Hacer
		Para t=t Hasta 1 Con Paso -1 Hacer
			sum4=sum4+m[i,t]
		Fin Para
	Fin Para
	Escribir "La suma de la otra diagonal es ",sum4
	
	Si sum1=sum2 y sum3=sum4 y sum2=sum4 y sum2=sum3 y sum1=sum3 y sum1=sum4 Entonces
		Escribir "Es un cuadrado mágico"
	SiNo
		Escribir "No es un cuadrado mágico"
	Fin Si
	
FinSubProceso
