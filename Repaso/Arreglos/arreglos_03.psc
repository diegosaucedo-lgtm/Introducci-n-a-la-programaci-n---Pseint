Algoritmo s16III_arreglos
	
	Definir salario Como Entero
	Definir i,max,min Como Entero
	
	Dimension salario[3]
	
	Para i=1 Hasta 3 Con Paso 1 Hacer
		Escribir "Ingresa el salario ",i," : "
		Leer salario[i]
	Fin Para
	
	max=salario[1]
	min=salario[1]
	
	Para i=2 Hasta 3 Con Paso 1 Hacer
		Si salario[i]>max Entonces
			max=salario[i]
		SiNo
			Si salario[i]<min Entonces
				min=salario[i]
			Fin Si
		Fin Si
	Fin Para
	
	//Salida
	Escribir "Numero maximo: ",max
	Escribir "Numero minimo: ",min
	
	
FinAlgoritmo
