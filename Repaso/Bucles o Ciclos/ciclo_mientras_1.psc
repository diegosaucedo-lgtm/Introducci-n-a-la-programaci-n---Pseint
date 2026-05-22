Algoritmo s13
	
	//Resolver con digitos
	Definir n,n_aux,digit,n_invert Como Entero
	Definir n_par,n_impar,n_digit Como Entero
	Definir sum_par,sum_impar Como Entero
	
	//Ciclo 1
	n=0
	Mientras n<10  O  n>999999999 Hacer
		Escribir "Escribir un numero entre 2 y 9 digitos"
		Leer n
	Fin Mientras
	
	n_aux=n
	Escribir "--------------------------------------"
	Escribir "n = ",n
	
	//Ciclo 2
	n_digit=0
	n_par=0
	n_impar=0
	sum_par=0
	sum_impar=0
	n_invert=0
	
	Mientras n>0 Hacer
		Escribir "-----------------------------------------"
		digit=n MOD 10
		Escribir "Digito ",digit 
		n_invert=10*n_invert+digit
		n_digit=n_digit+1
		
		Si digit<>0 Entonces
			Si (digit MOD 2)=0 Entonces
				Escribir "Par"
				n_par=n_par+1
				sum_par=sum_par+digit
			SiNo
				Escribir "Impar"
				n_impar=n_impar+1
				sum_impar=sum_impar+digit
			Fin Si
		Fin Si
		
		n=trunc(n/10) //Devuelve la parte entera de una division
		Escribir "n = ",n
	Fin Mientras
	
	Escribir "-----------------------------------------"
	Escribir "N° de digitos : ",n_digit
	Escribir "N° invertido : ",n_invert
	Escribir "N° digitos pares : ",n_par
	Escribir "Suma de digitos pares : ",sum_par
	Escribir "N° digitos impares : ",n_impar
	Escribir "Suma de digitos impares : ",sum_impar
	
	Si n_aux=n_invert Entonces
		Escribir "El numero ",n_aux," es capicua"
	SiNo
		Escribir "El numero ",n_aux," no es capicua"
	Fin Si
	
	
	
	
FinAlgoritmo
