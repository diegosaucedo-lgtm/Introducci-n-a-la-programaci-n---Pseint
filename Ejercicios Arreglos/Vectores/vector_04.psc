Algoritmo ejercicio_04
	
	
//	Crear un vector que contenga 100 notas de 100 supuestos estudiantes, con valores entre 0 y
//	20 generadas aleatoriamente mediante el uso de la función azar() o aleatorio() de PseInt.
//	Luego, de acuerdo a las notas contenidas, el programa debe indicar cuántos estudiantes son:
//		a) Deficientes 0-5
//		b) Regulares 6-10
//		c) Buenos 11-15
//		d) Excelentes 16-20
	
	Definir v1,i,d,r,b,e Como Entero
	
	Dimension v1[100]
	
	d=0
	r=0
	b=0
	e=0
	Para i=1 Hasta 100 Con Paso 1 Hacer
		v1[i]=Aleatorio(1,20)
		Escribir "La ",i,"° nota es ",v1[i]
		
		Si v1[i]<=05 Entonces
			d=d+1
		SiNo
			Si v1[i]<=10 Entonces
				r=r+1
			SiNo
				Si v1[i]<=15 Entonces
					b=b+1
				SiNo
					e=e+1
				Fin Si
			Fin Si
		Fin Si
		
	Fin Para
	
	Escribir "Los alumnos deficientes son ",d
	Escribir "Los alumnos regulares son ",r
	Escribir "Los alumnos buenos son ",b
	Escribir "Los alumnos excelentes son ",e
	
FinAlgoritmo
