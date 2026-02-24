Funcion cant <- cantidadSignos ( expresion, long )
	
	Definir cant, i Como Entero
	
	cant=0
	Para i=1 Hasta long Con Paso 1 Hacer
		Si Subcadena(expresion,i,i)="x" o Subcadena(expresion,i,i)="/" o Subcadena(expresion,i,i)="+" o Subcadena(expresion,i,i)="-" Entonces
			cant=cant+1
		Fin Si
		Si Subcadena(expresion,i,i)="(" o  Subcadena(expresion,i,i)=")" Entonces
			cant=cant+1
		Fin Si
	Fin Para
	cant=cant+2
	
Fin Funcion

Algoritmo infijas_final
	
	Definir expresion, aux Como Caracter
	Definir long, longaux, i, j, k, resultado, pos, ind, interv, num Como Entero
	
	Escribir "----CALCULADORA---"
	Escribir "Ingresa la expresión matemática a calcular: " Sin Saltar
	Leer expresion 
	
	long=Longitud(expresion)
	ind=cantidadSignos(expresion, long)
	Dimension pos[ind]
	llenarArregloPos(expresion, long, pos, ind)
	
	
	Para i=1 Hasta long Con Paso 1 Hacer
		Si SubCadena(expresion,i,i)="x" Entonces
			Para j=1 Hasta ind Con Paso 1 Hacer
				Si pos[j]=i Entonces
					resultado=ConvertirANumero(SubCadena(expresion,pos[j-1]+1,i-1))*ConvertirANumero(SubCadena(expresion,i+1,pos[j+1]-1))
					expresion=SubCadena(expresion,1,pos[j-1])+ConvertirATexto(resultado)+SubCadena(expresion,pos[j+1],long)
				Fin Si
			Fin Para
		Fin Si
	Fin Para
	
	
	
FinAlgoritmo

SubProceso llenarArregloPos(expresion, long, pos, ind)
	
	Definir i, cont como entero 
	
	cont=1
	Para i=1 Hasta long Con Paso 1 Hacer
		Si Subcadena(expresion,i,i)="x" o Subcadena(expresion,i,i)="/" o Subcadena(expresion,i,i)="+" o Subcadena(expresion,i,i)="-" Entonces
			cont=cont+1
			pos[cont]=i
		Fin Si
		Si Subcadena(expresion,i,i)="(" o  Subcadena(expresion,i,i)=")" Entonces
			cont=cont+1
			pos[cont]=i
		FinSi
	Fin Para
	pos[1]=0
	pos[ind]=long+1
	
FinSubProceso
