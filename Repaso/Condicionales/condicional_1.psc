Algoritmo s09
	//Propiedades de los triangulos 
	Definir a,b,c,max,pitagorico,pp Como Entero //a=5  b=3 c=4 pp=perimetro sp=semiperimetro
	Definir sp,ar,cosc,cosb,cosa Como Real
	Definir c1,c2,c3 Como Logico
	
	Escribir Sin Saltar "Ingresa el lado a: "
	Leer a
	Escribir Sin Saltar "Ingresa el lado b: "
	Leer b
	Escribir Sin Saltar "Ingresa el lado c: "
	Leer c
	
	c1=abs(b-c)<a y a<b+c
	c2=abs(a-c)<b y b<a+c
	c3=abs(b-a)<c y c<b+a
	
	Si c1 y c2 y c3 Entonces
		Escribir "El triangulo ",a,", ",b," y ",c," existe"
		pp=a+b+c
		sp=pp/2
		ar=raiz(sp*(sp-a)*(sp-b)*(sp-c))
		
		Escribir "El perimetro es ",pp
		Escribir "El semiperimetro es ",sp
		Escribir "Su area es ",ar
		Escribir "Altura relativa al lado a : ",2*ar/a
		Escribir "Altura relativa al lado b : ",2*ar/b
		Escribir "Altura relativa al lado c : ",2*ar/c
		
		//Tipo de triangulo segun los lados 
		Si a=b y a=c Entonces
			Escribir "Es un equilatero"
		SiNo
			Si a<>b y a<>c y b<>c Entonces
				Escribir "Es un escaleno"
			SiNo
				Escribir "Es un isosceles"
			Fin Si
		Fin Si
		
		//Tipo de triangulo segun los angulos
		max=a
		Si b>max Entonces
			max=b
		Fin Si
		Si c>max Entonces
			max=c
		Fin Si
		//Hallamos el pitagorico
		piatgorico=a^2+b^2+c^2-2*max^2
		
		Si pitagorico<0 Entonces
			Escribir "Es obtusangulo"
		SiNo
			Si pitagorico=0 Entonces
				Escribir "Es rectangulo"
			SiNo
				Escribir "Es acutangulo"
			Fin Si
		Fin Si
		
		//Hallamos los angulos
		cosc=(a^2+b^2-c^2)/(2*a*b)
		cosb=(a^2+c^2-b^2)/(2*a*c)
		cosa=(b^2+c^2-a^2)/(2*c*b)
		//Hallamos los angulos
		Escribir "El angulo en c es: ",acos(cosc)*(180/PI)
		Escribir "El angulo en b es: ",acos(cosb)*(180/PI)
		Escribir "El angulo en a es: ",acos(cosa)*(180/PI)
		
	SiNo
		Escribir "El triangulo ",a,", ",b," y ",c," no existe"
	Fin Si
	
	
	
FinAlgoritmo
