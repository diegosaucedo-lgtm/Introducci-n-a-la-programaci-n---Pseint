Funcion n <- numeroNum ( expresion, long, aritmetica )
	
	Definir n, i, j Como Entero
	
	n=0
	Para i=1 Hasta long Con Paso 1 Hacer
		Para j=1 Hasta 4 Con Paso 1 Hacer
			Si SubCadena(expresion,i,i)=aritmetica[j] Entonces
				n=n+1
			Fin Si
		Fin Para
	Fin Para
	n=n+1
	
Fin Funcion

Funcion s <- numeroSignos ( expresion, long, aritmetica )
	
	Definir s, i, j Como Entero
	
	s=0
	Para i=1 Hasta long Con Paso 1 Hacer
		Para j=1 Hasta 6 Con Paso 1 Hacer
			Si SubCadena(expresion,i,i)=aritmetica[j] Entonces
				s=s+1
			Fin Si
		Fin Para
	Fin Para
	
Fin Funcion

Algoritmo calculadora_expresiones_infijas
	
	Definir num Como Real
	Definir n, long, s, i, j Como Entero
	Definir expresion, signos, aritmetica Como Caracter
	Dimension aritmetica[6]
	
	aritmetica[1]="x"
	aritmetica[2]="/"
	aritmetica[3]="+"
	aritmetica[4]="-"
	aritmetica[5]="("
	aritmetica[6]=")"
	
	mostrarMensaje()
	
	leer expresion 
	
	long=Longitud(expresion)
	
	s=numeroSignos( expresion, long , aritmetica)
	Dimension signos[s]
	llenarArregloSignos(expresion, signos, long, aritmetica)
	
	n=numeroNum( expresion, long, aritmetica )
	Dimension num[n]
	llenarArrgeloNum(expresion, num, long)
	
	calcularResultado(num, n, signos, s, aritmetica)
	
FinAlgoritmo

//Procedimiento -> es un subalgoritmo sin argumentos
SubProceso mostrarMensaje()
	Escribir "-------CALCULADORA----------"
	Escribir "Ingresa la operación que desea realizar: "
FinSubProceso

//Subproceso -> es un subAlgoritmo  con argumentos
SubProceso llenarArregloSignos(expresion, signos, long, aritmetica)
	
	Definir i, j, ind Como Entero
	
	ind=0
	Para i=1 Hasta long Con Paso 1 Hacer
		Para j=1 Hasta 6 Con Paso 1 Hacer
			Si SubCadena(expresion,i,i)=aritmetica[j] Entonces
				ind=ind+1
				signos[ind]=aritmetica[j]
			Fin Si
		Fin Para
	Fin Para
	
FinSubProceso

SubProceso llenarArrgeloNum(expresion, num, long)
	
	Definir aux Como Caracter
	Definir i, j, k, l, longaux, posI, posF Como Entero
	
	aux=""
	Para i=1 Hasta long Con Paso 1 Hacer
		Si SubCadena(expresion,i,i)<>"(" y SubCadena(expresion,i,i)<>")" Entonces
			aux=aux+SubCadena(expresion,i,i)
		Fin Si
	Fin Para
	
	longaux=Longitud(aux)
	posI=1
	k=0
	Para j=1 Hasta longaux Con Paso 1 Hacer
		Si SubCadena(aux,j,j)="x" o SubCadena(aux,j,j)="/" o SubCadena(aux,j,j)="+" o SubCadena(aux,j,j)="-" Entonces
			k=k+1
			posF=j-1
			num[k]=ConvertirANumero(SubCadena(aux,posI,posF))
			posI=j+1
		Fin Si
	Fin Para
	k=k+1
	num[k]=ConvertirANumero(SubCadena(aux,posI,longaux))
	
FinSubProceso

SubProceso calcularResultado(num, n, signos, s, aritmetica)
	
	Definir i, j, k, l, numOperaciones, opMul, opDiv, opSum, opRes Como Entero
	Definir regla Como Caracter
	Definir resultado, mul, div, sum, res Como Real
	
	opMul=0
	opDiv=0
	opSum=0
	opRes=0
	Para i=1 Hasta s Con Paso 1 Hacer
		Si signos[i]="x" Entonces
			opMul=opMul+1
		FinSi
		Si signos[i]="/" Entonces
			opDiv=opDiv+1
		Fin Si
		Si signos[i]="+" Entonces
			opSum=opSum+1
			
		Fin Si
		Si signos[i]="-" Entonces
			opRes=opRes+1
		Fin Si
	Fin Para
	
	Si opMul>0 Entonces
		Dimension mul[opMul]
	Fin Si
	Si opDiv>0 Entonces
		Dimension div[opDiv]
	Fin Si
	Si opSum>0 Entonces
		Dimension sum[opSum]
	Fin Si
	Si opRes>0 Entonces
		Dimension res[opRes]
	Fin Si
	
	regla="x/+-"
	numOperaciones=0
	Para j=1 Hasta Longitud(regla) Con Paso 1 Hacer
		Para k=1 Hasta s Con Paso 1 Hacer
			Si SubCadena(regla,j,j)=signos[k] Entonces
				numOperaciones=numOperaciones+1
				k=s
			Fin Si
		Fin Para
	Fin Para
	

	
	Para l=1 Hasta 4 Con Paso 1 Hacer
		Para k=1 Hasta s Con Paso 1 Hacer
			Si aritmetica[l]=signos[k] Entonces
				Segun l Hacer
					1:
						resultado=num[k]*num[k+1]
						
						num[k]=resultado
						num[k+1]=resultado
					2:
						resultado=num[k]/num[k+1]
						num[k]=resultado
						num[k+1]=resultado
					3:
						resultado=num[k]+num[k+1]
						num[k]=resultado
						num[k+1]=resultado
					4:
						resultado=num[k]-num[k+1]
						num[k]=resultado
						num[k+1]=resultado
					De Otro Modo:
						Escribir "Error"
				Fin Segun

			Fin Si
		Fin Para
	Fin Para
	
	Escribir "El resultado es ", num[k-1]
FinSubProceso






