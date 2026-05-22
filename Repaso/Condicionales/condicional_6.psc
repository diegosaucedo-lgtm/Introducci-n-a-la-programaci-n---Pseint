Algoritmo s06
	
	//Hallar la solucion a la ecuación cuadrática
	Definir a,b,c Como Entero
	Definir disc,p1,p2 Como Real
	
	//Ecuacion cuadratica: ax2+bx+c
	// 1 -- -4 --- 1
	// 1 -- 5 --- 6
	// 1 -- 1 -- 1
	Escribir Sin Saltar "Ingrese el coeficiente cuadratico (a) ", a 
	Leer a
	Escribir Sin Saltar "Ingrese el coeficiente lineal (b) ", b
	Leer b
	Escribir Sin Saltar "Ingrese el coeficiente independiente (c) ", c
	Leer c
	//Hallamos la discriminante
	disc=b^2-4*a*c
	//Hallamos la barte uno
	p1=(-b/2*a)
	p2=raiz(abs(disc))/(2*a) //El operador absoluto opera el numero imaginario dentro de la raiz
	//Hallar numeros imaginarios
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
	
	
	
	
	
	
	
	
	
FinAlgoritmo
