Algoritmo s12
	//Sumatorias
	Definir x,i,suma,tn Como Entero
	
	x=0
	Mientras x<=0 Hacer
		Escribir Sin Saltar "Ingresa un numero positivo"
		Leer x
	Fin Mientras
	
	//Sumatoria de numeros consecutivos
	//Inicializamos los terminos del bucle
	Escribir "----------------------------------------------------------"
	i=1
	tn=i
	suma=tn
	
	Escribir Sin Saltar tn
	i=i+1
	//Ciclo
	Mientras i<=x Hacer
		tn=i
		Escribir Sin Saltar " + ",tn
		suma=suma+tn
		i=i+1
	Fin Mientras
	Escribir " = ",suma
	
	//Suma de numeros pares
	Escribir "----------------------------------------------------------"
	i=1
	tn=2*i
	suma=tn
	
	Escribir Sin Saltar tn
	i=i+1
	//Ciclo
	Mientras i<=x Hacer
		tn=2*i
		Escribir Sin Saltar " + ",tn
		suma=suma+tn
		i=i+1
	Fin Mientras
	Escribir " = ",suma
	
	//Suma de numeros impares
	Escribir "----------------------------------------------------------"
	i=1
	tn=2*i-1
	suma=tn
	
	Escribir Sin Saltar tn
	i=i+1
	//Ciclo
	Mientras i<=x Hacer
		tn=2*i-1
		Escribir Sin Saltar " + ",tn
		suma=suma+tn
		i=i+1
	Fin Mientras
	Escribir " = ",suma
	
	//Suma de numeros al cuadrado
	Escribir "----------------------------------------------------------"
	i=1
	tn=i^2
	suma=tn
	
	Escribir Sin Saltar tn
	i=i+1
	//Ciclo
	Mientras i<=x Hacer
		tn=i^2
		Escribir Sin Saltar " + ",tn
		suma=suma+tn
		i=i+1
	Fin Mientras
	Escribir " = ",suma
	
	//Suma de numeros al cubo
	Escribir "----------------------------------------------------------"
	i=1
	tn=i^3
	suma=tn
	
	Escribir Sin Saltar tn
	i=i+1
	//Ciclo
	Mientras i<=x Hacer
		tn=i^3
		Escribir Sin Saltar " + ",tn
		suma=suma+tn
		i=i+1
	Fin Mientras
	Escribir " = ",suma
	
	//Suma de numeros triangulares 1 --- 3 ---- 6 
	Escribir "----------------------------------------------------------"
	i=1
	tn=(i*(i+1))/2
	suma=tn
	
	Escribir Sin Saltar tn
	i=i+1
	//Ciclo
	Mientras i<=x Hacer
		tn=(i*(i+1))/2
		Escribir Sin Saltar " + ",tn
		suma=suma+tn
		i=i+1
	Fin Mientras
	Escribir " = ",suma
	
	//Suma de otro pares + impares - 
	Escribir "----------------------------------------------------------"
	i=1
	tn=i
	suma=tn
	
	Escribir Sin Saltar tn
	i=i+1
	//Ciclo
	Mientras i<=x Hacer
		tn=i
		Si (i  MOD 2) = 0 Entonces
			Escribir Sin Saltar " - ",tn
			suma=suma-tn
		SiNo
			Escribir Sin Saltar " + ",tn
			suma=suma+tn
		Fin Si
		i=i+1
	Fin Mientras
	Escribir " = ",suma
	
FinAlgoritmo
