
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

Algoritmo sin_titulo
	
	Definir expresion, expresiones, pila Como Caracter
	Definir long, s, n, op, e, p Como Entero
	
	Escribir "Escribe la expresión infija a calcular: "
	Leer  expresion
	
	long=Longitud(expresion)
	
	s=cantidadSignos(expresion, long)
	op=cantidadOperadores(expresion, long)
	n=op+1
	e=s+n
	p=e-1
	Dimension expresiones[e]
	Dimension pila[p]
	
	
	llenarArregloExpresiones(expresion, expresiones, long, e)
	
	mostrarArreglo(expresiones, e)
	
	calcularResultado(pila, expresiones, p, e)
	
FinAlgoritmo

SubProceso llenarArregloExpresiones(expresion, expresiones, long, e)
	
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
				Si (SubCadena(expresion,i,i)="(" o SubCadena(expresion,i,i)=")" o SubCadena(expresion,i,i)="x"o SubCadena(expresion,i,i)="/" o SubCadena(expresion,i,i)="+" o SubCadena(expresion,i,i)="-") y Longitud(acum)>0 Entonces
					cant=cant+1
					expresiones[cant]=acum
					cant=cant+1
					expresiones[cant]=SubCadena(expresion,i,i)
					acum=""
					j=r
				SiNo
					Si (SubCadena(expresion,i,i)="(" o SubCadena(expresion,i,i)=")" o SubCadena(expresion,i,i)="x"o SubCadena(expresion,i,i)="/" o SubCadena(expresion,i,i)="+" o SubCadena(expresion,i,i)="-") y Longitud(acum)=0 Entonces
						cant=cant+1
						expresiones[cant]=Subcadena(expresion, i, i)
						j=r
					Fin Si
				Fin Si
			Fin Si
			
		Fin Para
	Fin Para
	
	Si Longitud(acum)>0 Entonces
		expresiones[e]=acum
	SiNo
		expresiones[e]=SubCadena(expresion,long,long)
	Fin Si
	
	
FinSubProceso

SubProceso mostrarArreglo(expresiones, e)
	
	Definir i Como Entero
	
	Para i=1 Hasta e Con Paso 1 Hacer
		Escribir Sin Saltar expresiones[i], " "
	Fin Para
	Escribir ""
	
FinSubProceso

SubProceso calcularResultado(pila, expresiones, p, e)
	
	Definir i, j, long Como Entero
	Definir regla, op Como caracter
	Definir resultado Como Real
	
	regla="(x/+-"
	long=Longitud(regla)
	
	Para i=1 Hasta long Con Paso 1 Hacer
		Para j=1 Hasta e Con Paso 1 Hacer
			Si SubCadena(regla,i,i)=expresiones[j] Entonces
				op=SubCadena(regla,i,i)
				Segun op Hacer
					"(":
						
						Si expresiones[j+4]=")" Entonces
							Si SubCadena(regla,2,2)=expresiones[j+2] Entonces
								resultado=ConvertirANumero(expresiones[j+2-1])*ConvertirANumero(expresiones[j+2+1])
								expresiones[j]=ConvertirATexto(resultado)
								
								reacomodoArreglos(expresiones, pila, e, j)
								j=0
								i=1
								mostrarArreglo(expresiones, e)
							SiNo
								Si SubCadena(regla,3,3)=expresiones[j+2] Entonces
									resultado=ConvertirANumero(expresiones[j+2-1])/ConvertirANumero(expresiones[j+2+1])
									expresiones[j]=ConvertirATexto(resultado)
									
									reacomodoArreglos(expresiones, pila, e, j)
									j=0
									i=1
									mostrarArreglo(expresiones, e)
								SiNo
									Si SubCadena(regla,4,4)=expresiones[j+2] Entonces
										resultado=ConvertirANumero(expresiones[j+2-1])+ConvertirANumero(expresiones[j+2+1])
										expresiones[j]=ConvertirATexto(resultado)
										
										reacomodoArreglos(expresiones, pila, e, j)
										j=0
										i=1
										mostrarArreglo(expresiones, e)
									SiNo
										Si SubCadena(regla,5,5)=expresiones[j+2] Entonces
											resultado=ConvertirANumero(expresiones[j+2-1])-ConvertirANumero(expresiones[j+2+1])
											expresiones[j]=ConvertirATexto(resultado)
											
											reacomodoArreglos(expresiones, pila, e, j)
											j=0
											i=1
											mostrarArreglo(expresiones, e)
										SiNo
											Escribir "Error"
										Fin Si
									Fin Si
								Fin Si
							Fin Si
						Fin Si
						
					"x":
						resultado=ConvertirANumero(expresiones[j-1])*ConvertirANumero(expresiones[j+1])
						expresiones[j-1]=ConvertirATexto(resultado)
						
						reacomodoArreglo(expresiones, pila, e, j)
						j=1
						mostrarArreglo(expresiones, e)
					"/":
						resultado=ConvertirANumero(expresiones[j-1])/ConvertirANumero(expresiones[j+1])
						expresiones[j-1]=ConvertirATexto(resultado)
						
						reacomodoArreglo(expresiones, pila, e, j)
						j=1
						mostrarArreglo(expresiones, e)
					"+":
						resultado=ConvertirANumero(expresiones[j-1])+ConvertirANumero(expresiones[j+1])
						expresiones[j-1]=ConvertirATexto(resultado)
						
						reacomodoArreglo(expresiones, pila, e, j)
						j=1
						mostrarArreglo(expresiones, e)
					"-":
						resultado=ConvertirANumero(expresiones[j-1])-ConvertirANumero(expresiones[j+1])
						expresiones[j-1]=ConvertirATexto(resultado)
						
						reacomodoArreglo(expresiones, pila, e, j)
						j=1
						mostrarArreglo(expresiones, e)
						
					De Otro Modo:
						Escribir "Error en indicar el operador"
				Fin Segun
			Fin Si
		Fin Para
	Fin Para
	
	Escribir "El resultado es ", expresiones[1]
	
FinSubProceso

SubProceso reacomodoArreglo(expresiones, pila, e, j)
	
	Definir k, l, m, ind Como Entero
	
	Si j+2<e Entonces
		ind=0
		Para k=j+2 Hasta e Con Paso 1 Hacer
			ind=ind+1
			pila[ind]=expresiones[k]
		Fin Para
		
		Para l=j Hasta e Con Paso 1 Hacer
			expresiones[l]="0"
		Fin Para
		
		ind=0
		Para m=j Hasta e-2 Con Paso 1 Hacer
			ind=ind+1
			expresiones[m]=pila[ind]
		Fin Para
		
	SiNo
		Para l=j Hasta e Con Paso 1 Hacer
			expresiones[l]="0"
		Fin Para
	Fin Si
	
FinSubProceso

SubProceso reacomodoArreglos(expresiones, pila, e, j)
	
	Definir k, l, m, ind Como Entero

	ind=0
	Para k=j+5 Hasta e Con Paso 1 Hacer
		ind=ind+1
		pila[ind]=expresiones[k]
	Fin Para
	
	Para l=j+1 Hasta e Con Paso 1 Hacer
		expresiones[l]="0"
	Fin Para
	
	ind=0
	Para m=j+1 Hasta e-4 Con Paso 1 Hacer
		ind=ind+1
		expresiones[m]=pila[ind]
	Fin Para

FinSubProceso

