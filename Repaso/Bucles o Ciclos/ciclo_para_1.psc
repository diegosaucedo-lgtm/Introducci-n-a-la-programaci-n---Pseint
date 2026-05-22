Algoritmo s15
	
	//Sumatorias
	Definir i,n,suma Como Entero
	
	
	Repetir
		Escribir "Ingresa el numero de terminos: "
		Leer n
	Hasta Que n>0
	
	
	//Suma de numeros consecutivos
//	suma=0
//	Para i=1 Hasta n Con Paso 1 Hacer
//		
//		Si i=1 Entonces
//			Escribir Sin Saltar i
//		SiNo
//			Escribir Sin Saltar " + ",i
//		Fin Si
//		
//		suma=suma+i
//	Fin Para
//	
//	Escribir Sin Saltar " = ",suma
	
	//Suma de numeros pares
//	Escribir "---------------------------------------"
	
//	suma=0
//	Para i=1 Hasta n Con Paso 1 Hacer
//		
//		Si i=1 Entonces
//			Escribir Sin Saltar 2*i
//		SiNo
//			Escribir Sin Saltar " + ",2*i
//		Fin Si
//		
//		suma=suma+2*i
//	Fin Para
//	
//	Escribir Sin Saltar " = ",suma
//	
	//Suma de numeros impares
	
//	Escribir "---------------------------------------"
//	
//	suma=0
//	Para i=1 Hasta n Con Paso 1 Hacer
//		
//		Si i=1 Entonces
//			Escribir Sin Saltar (2*i)-1
//		SiNo
//			Escribir Sin Saltar " + ",(2*i)-1
//		Fin Si
//		
//		suma=suma+(2*i)-1
//	Fin Para
//	
//	Escribir Sin Saltar " = ",suma
	
	//Suma de numeros cuadrados
	
//	Escribir "---------------------------------------"
//	
//	suma=0
//	Para i=1 Hasta n Con Paso 1 Hacer
//		
//		Si i=1 Entonces
//			Escribir Sin Saltar i^2
//		SiNo
//			Escribir Sin Saltar " + ",i^2
//		Fin Si
//		
//		suma=suma+i^2
//	Fin Para
//	
//	Escribir Sin Saltar " = ",suma
	
	//Suma de numeros al cuadrado
	
//	Escribir "---------------------------------------"
//	
//	suma=0
//	Para i=1 Hasta n Con Paso 1 Hacer
//		
//		Si i=1 Entonces
//			Escribir Sin Saltar i^3
//		SiNo
//			Escribir Sin Saltar " + ",i^3
//		Fin Si
//		
//		suma=suma+i^3
//	Fin Para
//	
//	Escribir Sin Saltar " = ",suma
	
	//Suma de numeros triangulares
	
//	suma=0
//	Para i=1 Hasta n Con Paso 1 Hacer
//		
//		Si i=1 Entonces
//			Escribir Sin Saltar i*(i+1)/2
//		SiNo
//			Escribir Sin Saltar " + ",i*(i+1)/2
//		Fin Si
//		
//		suma=suma+i*(i+1)/2
//	Fin Para
//	
//	Escribir Sin Saltar " = ",suma
	
	//Otra suma 
	suma=0
	Para i=1 Hasta n Con Paso 1 Hacer
		
		Si i=1 Entonces
			Escribir Sin Saltar i
		SiNo
			Si (i mod 2)=0 Entonces
				Escribir Sin Saltar " - ",i
			SiNo
				Escribir Sin Saltar " + ",i
			Fin Si
			
		Fin Si
		
		suma=suma+i
	Fin Para
	
	Escribir Sin Saltar " = ",suma
	
FinAlgoritmo
