Funcion aux <- variableAux ( expresion )
	
	Definir aux como caracter
	Definir l, long como entero
	
	aux=""
	l=0
	long=Longitud(expresion)
	Para l=1 Hasta long Con Paso 1 Hacer
		Si SubCadena(expresion,l,l)<>"(" y SubCadena(expresion,l,l)<>")" Entonces
			aux=aux+SubCadena(expresion,l,l)
		Fin Si
	Fin Para
	
Fin Funcion

Funcion cant <- cantidadParentesis ( expresion, aritmetica )
	
	Definir cant, long, i, j como entero
	
	long=Longitud(expresion)
	cant=0
	Para i=1 Hasta 2 Con Paso 1 Hacer
		Para j=1 Hasta long Con Paso 1 Hacer
			Si aritmetica[i]=SubCadena(expresion,j,j) Entonces
				cant=cant+1
			Fin Si
		Fin Para
	Fin Para
	
Fin Funcion

Funcion cant <- cantidadNumeros ( expresion, aritmetica )
	
	Definir cant, long, cont, i, j como entero
	
	long=Longitud(expresion)
	cont=0
	Para i=3 Hasta 7 Con Paso 1 Hacer
		Para j=1 Hasta long Con Paso 1 Hacer
			Si aritmetica[i]=SubCadena(expresion,j,j) Entonces
				cont=cont+1
			Fin Si
		Fin Para
	Fin Para
	
	cant=cont+1
	
Fin Funcion

Algoritmo calculadora_infija
	
	//Variables globales
	//1. Expresion ->  contiene toda la operacion a calcular
	//2. aritmetica -> contiene los signos de operacion y los parentesis
	//3. num -> contiene los números dentro de la expresion
	//4. t ->  contiene la cantidad de numeros de la expresion
	Definir expresion, aritmetica, aux, signos Como Caracter
	Definir num, t, parent, p, resultado, s, i, j Como Entero
	Dimension aritmetica[7]
	
	aritmetica[1]="("
	aritmetica[2]=")"
	aritmetica[3]="*"
	aritmetica[4]="x"
	aritmetica[5]="/"
	aritmetica[6]="+"
	aritmetica[7]="-"
	
	Escribir "********CALCULADORA DE EXPRESIONES*************"
	Escribir "Ingresa la operación que deseas calcular"
	Leer expresion
	
	
	//Arreglos inicializados por medio de una funcion
	t=cantidadNumeros(expresion, aritmetica)
	p=cantidadParentesis(expresion, aritmetica)
	s=t-1
	//Aqui comienza las excepciones
	// Si hay parentesis, signos y numeros ocurre los siguiente (p>0)
	Si p>0 y s>0 y t>0 Entonces
		Dimension parent[p]
		Dimension num[t]
		Dimension signos[s]
		//Lleno el arreglo parentesis con sus posiciones 
		llenarArregloParentesis(aritmetica, expresion, parent)
		//Variable sin los parentesis
		aux=variableAux(expresion)
		//Lleno el arreglo numero con los numeros de la expresion
		//Usa una variable auxiliar que contenga solo los numeros y los signos de operacion
		llenarArregloNumeros(num, aux)
		//Lleno el arreglo signos con los signos asociados a los indices como posiciones
		//Usa una variable auxiliar que contenga solo los numeros y los signos de operacion
		llenarArregloSignos(signos, aux)
	SiNo
		// Si no hay parentesis y si hay numeros y signos ocurre lo siguiente
		Si p=0 y s>0 y t>0 Entonces
			Dimension num[t]
			Dimension signos[s]
			aux=expresion
			//Lleno el arreglo numero con los numeros de la expresion
			llenarArregloNumeros(num, aux)
			//Lleno el arreglo signos con los signos asociados a los indices como posiciones
			llenarArregloSignos(signos, aux)
			//Este es el subproceso del calculo
			//Para calcularlo usaré los arreglos de tal modo que vaya disminuyendo su dimension segun las operaciones
			calculoResultado(num, signos, aux, t, s)
		SiNo
			Escribir "No se ha escrito correctamente una expresión aritmética para calcular"
			Escribir "Vuelva a intentarlo o finalice el proceso"
		Fin Si
	Fin Si
	
FinAlgoritmo

SubProceso llenarArregloParentesis(aritmetica, expresion, parent)
	
	Definir i, j, long, cont como entero

	long=Longitud(expresion)
	cont=0
	Para i=1 Hasta 2 Con Paso 1 Hacer
		Para j=1 Hasta long Con Paso 1 Hacer
			Si aritmetica[i]=SubCadena(expresion,j,j) Entonces
				cont=cont+1
				parent[cont]=j
			Fin Si
		Fin Para
	Fin Para

FinSubProceso

subProceso llenarArregloNumeros(num, aux)
	
	Definir l, k, long, pos1, pos2 como entero

	pos1=1
	l=0
	long=Longitud(aux)
	Para k=1 Hasta long Con Paso 1 Hacer
		Si SubCadena(aux,k,k)="+" o SubCadena(aux,k,k)="-" o SubCadena(aux,k,k)="x" o SubCadena(aux,k,k)="/" o Subcadena(aux,k,k)="*" Entonces
			l=l+1
			pos2=k-1
			num[l]=ConvertirANumero(SubCadena(aux,pos1,pos2))
			pos1=k+1
		Fin Si
	FinPara
	l=l+1
	num[l]=ConvertirANumero(SubCadena(aux,pos1,long))
	
FinSubProceso

SubProceso llenarArregloSignos(signos, aux)
	
	Definir i, cont, long Como Entero
	
	cont=0
	long=Longitud(aux)
	Para i=1 Hasta long Con Paso 1 Hacer
		Si SubCadena(aux,i,i)="+" o SubCadena(aux,i,i)="-" o SubCadena(aux,i,i)="*" o SubCadena(aux,i,i)="x" o SubCadena(aux,i,i)="/"  Entonces
			cont=cont+1
			signos[cont]=SubCadena(aux,i,i)
		Fin Si
	Fin Para
	
FinSubProceso

SubProceso calculoResultado(num, signos, aux, t, s)
	
	Definir regla Como Caracter
	Definir numOperaciones, cont, i, j, long Como Entero
	
	regla="x*/+-"
	cont=0
	long=Longitud(regla)
	
	Para i=1 Hasta long Con Paso 1 Hacer
		Para j=1 Hasta s Con Paso 1 Hacer
			Si SubCadena(regla,i,i)=signos[j] Entonces
				cont=cont+1
				j=s
			Fin Si
		Fin Para
	Fin Para
	
	numOperaciones=cont
	
	
	
	
	
FinSubProceso



