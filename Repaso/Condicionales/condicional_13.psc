Algoritmo s10
	
	Definir x Como Entero
	
	Escribir "1. Numero invertido"
	Escribir "2. Ecuacion cuadratica"
	Escribir "3. Año bisiesto"
	Escribir "Otro numero ---> Salir"
	Escribir "-------------------------------------------"
	Escribir "Ingresa el numero"
	Leer x
	Segun x Hacer
		1:
			Definir n,U,D,C,M,I Como Entero
			Escribir "Ingresa un número de 4 cifras: "
			Leer n 
			
			Escribir "------------------------------------"
			U=n mod 10;
			Escribir "U= ",U," unidades"
			
			n=trunc(n/10) 
			
			D=n mod 10;
			Escribir "D= ",D," decenas"
			
			n=trunc(n/10)
			
			C=n mod 10;
			Escribir "C= ",C," centenas"
			
			n=trunc(n/10)
			
			M=n mod 10;
			Escribir "M= ",M," millares"
			
			I=U*1000+D*100+C*10+M*1
			Escribir "El número invertido es: ",I
	
		2:
			Definir a,b,c Como Entero
			Definir disc,p1,p2 Como Real
			
			Escribir Sin Saltar "Ingrese el coeficiente cuadratico (a) ", a 
			Leer a
			Escribir Sin Saltar "Ingrese el coeficiente lineal (b) ", b
			Leer b
			Escribir Sin Saltar "Ingrese el coeficiente independiente (c) ", c
			Leer c
			
			disc=b^2-4*a*c
			
			p1=(-b/2*a)
			p2=raiz(abs(disc))/(2*a) 
			
			Si disc<0 Entonces
				Escribir "Raices imaginarias"
				Escribir "x1: ", p1," + ",p2," i"
				Escribir "x2: ", p1," - ",p2," i"
			SiNo
				Escribir Sin Saltar "Raices reales "
				Si disc=0 Entonces
					Escribir "Iguales"
				SiNo
					Escribir "Diferentes"
				Fin Si
				
				Escribir "Raices reales"
				Escribir "x1: ", p1+p2
				Escribir "x2: ", p1-p2
			Fin Si
		3:
			Definir año Como Entero
			Definir m400,m4,m100 Como Logico
			
			Escribir Sin Saltar "Ingrese el año: "
			Leer año
			
			m400=(año  MOD 400)=0
			m4=(año  MOD 4)=0
			m100=(año  MOD 100)=0
			
			
			Si m400 o (m4 y  NO m100) Entonces
				Escribir "El Año ",año," es bisiesto"
			SiNo
				Escribir "El Año ",año," no es bisiesto"
	Fin Si
		De Otro Modo:
			Escribir  "Salir"
	Fin Segun
	
FinAlgoritmo
