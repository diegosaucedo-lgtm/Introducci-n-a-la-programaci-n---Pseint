Algoritmo factorial_valor_por_referencia_parametro_o_argumento
	
	Definir n,resul Como Entero
	
	Escribir "Ingrese el valor al que desea calcular la factorial: "
	Leer n
	
	vig(n,resul)
	
	Escribir "El factorial de ",n," es ",resul
	
FinAlgoritmo

SubAlgoritmo  vig(n,fac Por Referencia)
	Definir i Como Entero
	fac=1
	Para i=1 Hasta n Con Paso 1 Hacer
		fac=fac*i
	Fin Para
FinSubAlgoritmo




