Algoritmo s14
	
	//Hallar la factorial de un número
	Definir n,i,f Como Entero
	Definir op Como Caracter
	
	Repetir
		Limpiar Pantalla
		Repetir
			Escribir "Ingresa un numero mayor a cero y que sea par: "
			Leer n
		Hasta Que n>0 y (n mod 2)=0
		//Factorial 
		i=0
		f=1
		Repetir
			Si i>=1 Entonces
				Si i<n Entonces
					Escribir Sin Saltar i," x "
				SiNo
					Escribir Sin Saltar i
				Fin Si
				f=f*i
			Fin Si
			i=i+1
		Hasta Que i>n
		
		Escribir " = ",f
		Escribir n,"!= ",f
		
		Escribir "Si desea continuar presione (S o s) : "
		Leer op
	Hasta Que op<>"s" y op<>"S"
	
	
//	Repetir
//		Escribir "Ingresa un numero entero y par positivo: "
//		Leer n
//	Hasta Que n>0 y (n mod 2)=0
//	
	//Factorial
//	i=0
//	f=1
//	Repetir
//		Si i>1 Entonces
//			f=f*i
//		Fin Si
//		i=i+1
//	Hasta Que i>n
//	
//	Escribir n,"!= ",f
	
//	i=0
//	f=1
//	Repetir
//		Si i>=1 Entonces
//			Si i<n Entonces
//				Escribir Sin Saltar i," x "
//			SiNo
//				Escribir Sin Saltar i
//			Fin Si
//			f=f*i
//		Fin Si
//		i=i+1
//	Hasta Que i>n
//	
//	Escribir " = ",f
//	Escribir n,"!= ",f
	
	
FinAlgoritmo
