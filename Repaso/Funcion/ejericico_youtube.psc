Funcion num <- buscar_valor ( n, numer )
	
	Definir num, valor_normal, valor_arreglo, i Como Entero
	
	valor_normal=(n/2)*(n+1)
	
	valor_arreglo=0
	Para i=1 Hasta n Con Paso 1 Hacer
		valor_arreglo=valor_arreglo+numer[i]
	Fin Para
	
	num=valor_normal-valor_arreglo
	
Fin Funcion


Algoritmo sin_titulo
	
	Definir numer, n, i, valor_falta, pos Como Entero
	
	Escribir "Ingresa el tamaño del arreglo de números enteros: " Sin Saltar
	Leer n
	
	Dimension numer[n]
	
	Para i=1 Hasta n Con Paso 1 Hacer
		Escribir i,"° arreglo: " Sin Saltar
		Leer numer[i]
	Fin Para
	
	valor_falta=buscar_valor(n, numer)
	buscar_posicion(n, numer, pos)
	
	
	Escribir "El valor que falta en el arreglo es: ",valor_falta
	Escribir "La posición del valor faltante en el arreglo es: ", pos
	
	
	
FinAlgoritmo


SubProceso buscar_posicion(n, numer, pos por Referencia)
	
	Definir i Como Entero
	
	Para i=1 Hasta n Con Paso 1 Hacer
		Si numer[i]=0 Entonces
			pos=i
		Fin Si
	Fin Para
	
FinSubProceso




