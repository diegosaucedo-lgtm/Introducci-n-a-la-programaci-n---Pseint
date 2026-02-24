Funcion op <- cantidadOperadores ( expresion, long )
	
	Definir op Como Entero
	
	Definir cant, i, j, r Como Entero
	Definir regla Como Caracter
	
	regla="x/+-"
	r=Longitud(regla)
	op=0
	Para i=1 Hasta long Con Paso 1 Hacer
		Para j=1 Hasta r Con Paso 1 Hacer
			Si SubCadena(expresion,i,i)=SubCadena(regla,j,j) Entonces
				op=op+1
			Fin Si
		Fin Para
	Fin Para
	
Fin Funcion

Funcion cant <- cantidadSignos ( expresion, long)
	
	Definir cant, i, j, r Como Entero
	Definir regla Como Caracter
	
	regla="()x/+-"
	r=Longitud(regla)
	cant=0
	Para i=1 Hasta long Con Paso 1 Hacer
		Para j=1 Hasta r Con Paso 1 Hacer
			Si SubCadena(expresion,i,i)=SubCadena(regla,j,j) Entonces
				cant=cant+1
			Fin Si
		Fin Para
	Fin Para
	
	
Fin Funcion

Algoritmo solucion_final_infijas
	
	Definir expresion, signos, num, expresiones Como Caracter
	Definir  s, n, long, op Como Entero
	
	Escribir "Escribe la expresión infija a calcular: "
	Leer  expresion
	
	long=Longitud(expresion)
	
	s=cantidadSignos(expresion, long)
	Dimension signos[s]
	llenarArregloSignos(signos, s, expresion, long)
	
	op=cantidadOperadores(expresion, long)
	n=op+1
	Dimension num[n]
	llenarArregloNumeros(num, n, expresion, long)
	
	Dimension expresiones[s+n]
	llenarArregloExpresion(num, n, signos, s, expresiones)
	
	mostrarArreglos(signos, s, num, n, expresiones)
	
FinAlgoritmo

SubProceso llenarArregloSignos(signos, s, expresion, long)
	
	Definir i, j, ind Como Entero
	
	ind=0
	Para i=1 Hasta long Con Paso 1 Hacer
		Si SubCadena(expresion,i,i)="(" o SubCadena(expresion,i,i)=")" o SubCadena(expresion,i,i)="x"o SubCadena(expresion,i,i)="/" o SubCadena(expresion,i,i)="+" o SubCadena(expresion,i,i)="-"Entonces
			ind=ind+1
			signos[ind]=SubCadena(expresion,i,i)
		Fin Si
	Fin Para
	
FinSubProceso

SubProceso llenarArregloNumeros(num, n, expresion, long)
	
	Definir i, j, cant, r Como Entero
	Definir regla, acum Como Caracter
	
	regla="0123456789"
	r=Longitud(regla)
	acum=""
	cant=0
	Para i=1 Hasta long Con Paso 1 Hacer
		Para j=1 Hasta r Con Paso 1 Hacer
			Si SubCadena(expresion,i,i)=SubCadena(regla,j,j) Entonces
				acum=acum+SubCadena(expresion,i,i)
				j=r
			SiNo
				Si SubCadena(expresion,i,i)="x"o SubCadena(expresion,i,i)="/" o SubCadena(expresion,i,i)="+" o SubCadena(expresion,i,i)="-" Entonces
					cant=cant+1
					num[cant]=acum
					acum=""
					j=r
				Fin Si
			Fin Si
		Fin Para
	Fin Para
	num[n]=acum
	
FinSubProceso

SubProceso llenarArregloExpresion(num, n, signos, s, expresiones)
	
	Definir i, j Como Entero
	
	Para i=1 Hasta s Con Paso 1 Hacer
		expresiones[i*2]=signos[i]
	Fin Para
	
	Para j=1 Hasta n Con Paso 1 Hacer
		expresiones[(j*2)-1]=num[j]
	Fin Para
	
FinSubProceso


SubProceso mostrarArreglos(signos, s, num, n, expresiones)
	
	Definir i, j, k Como Entero
	
	Para i=1 Hasta s Con Paso 1 Hacer
		Escribir Sin Saltar signos[i]," "
	Fin Para
	
	Escribir ""
	
	Para j=1 Hasta n Con Paso 1 Hacer
		Escribir Sin Saltar num[j], " "
	Fin Para
	
	Escribir ""
	
	Para k=1 Hasta n+s Con Paso 1 Hacer
		Escribir Sin Saltar expresiones[k], " "
	Fin Para
	
FinSubProceso









