Algoritmo Subproceso_06
	
	
//	Realizar un subproceso que reciba un numero ingresado por el usuario y averigüe si el número es
//	capicúa o no (Por ejemplo: 12321). Nota: recordar el uso del MOD y el Trunc. No podemos
//	transformar el numero a cadena para realizar el ejercicio.
	
	
	Definir n Como Entero
	Escribir "Ingresa un número entero positivo: "
	Leer n
	
	capicua(n)
	
FinAlgoritmo

SubProceso capicua(n)
	
	Definir digito,c,i,cont,s1,s2,inv Como Entero
	
	s1=n
	c=0
	Mientras s1>0 Hacer
		digito=s1 mod 10
		c=c+1
		s1=trunc(s1/10)
	Fin Mientras
	
	cont=c-1

	
	inv=0
	s2=n
	Mientras s2>0 Hacer
		digito=s2 mod 10
		inv=inv+digito*(10^cont)
		cont=cont-1
		s2=trunc(s2/10)
	Fin Mientras
	
	Escribir "Número inverso: ",inv
	Si n=inv Entonces
		Escribir "Es capicua"
	SiNo
		Escribir "No es capicua"
	Fin Si
	
	
	
	
	
FinSubProceso
