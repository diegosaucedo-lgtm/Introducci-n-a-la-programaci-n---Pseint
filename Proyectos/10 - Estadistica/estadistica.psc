Funcion varianza <- calcularVarianza ( arreglo, n, media )
	
	Definir varianza Como Real
	Definir i Como Entero
	
	varianza=0
	Para i=1 Hasta n Con Paso 1 Hacer
		varianza=varianza+(arreglo[i]-media)^2
	Fin Para
	
	varianza=varianza/n
	
Fin Funcion

Funcion mediana <- calcularMediana ( arreglo,n )
	
	Definir mediana Como Real
	Definir i Como Entero

	Si n%2=0 Entonces
		i=n/2
		mediana=(arreglo[i]+arreglo[i+1])/2
	SiNo
		i=((n-1)/2)+1
		mediana=arreglo[i]
	Fin Si
	
Fin Funcion

Funcion media <- calcularMedia ( arreglo, n )
	
	Definir media Como Real
	Definir i Como Entero
	
	media=0
	Para i=1 Hasta n Con Paso 1 Hacer
		media=media+arreglo[i]
	Fin Para
	
	media=media/n
	
Fin Funcion

Algoritmo estadistica
	
	Definir arreglo, media, mediana, varianza Como Real
	Definir n, i, j Como Entero
	
	Escribir "---CACLCULO ESTADISTICO---"
	Escribir "¿Cuántos números deseas ingresar"
	Leer n 
	Dimension arreglo[n]
	Esperar Tecla
	Limpiar Pantalla
	
	Para i=1 Hasta n Con Paso 1 Hacer
		Escribir "Ingresa el ",i,"° número: "
		Leer arreglo[i]
		Esperar Tecla
		Limpiar Pantalla
	Fin Para
	
	Escribir "*****ESTADISTICA*****"
	Escribir "Los números ingresados son: "
	Para j=1 Hasta n Con Paso 1 Hacer
		Escribir arreglo[j],"  " Sin Saltar
	Fin Para
	Escribir ""
	
	ordenarMenorMayor(arreglo, n)
	media=calcularMedia ( arreglo, n )
	mediana=calcularMediana ( arreglo,n )
	varianza=calcularVarianza ( arreglo, n, media)
	
	
	Escribir "La media es ", media 
	Escribir "La mediana es ", mediana
	calcularModa(arreglo, n)
	Escribir "La varianza es ", varianza
	Escribir "La desviación estándar es ", varianza^(1/2)
FinAlgoritmo

SubProceso ordenarMenorMayor(arreglo, n)
	
	Definir val_min, min Como Real
	Definir i, j, k Como Entero
	
	//Ordenar de menor a mayor
	Para k=1 Hasta n-1 Con Paso 1 Hacer
		min=k
		Para j=k+1 Hasta n Con Paso 1 Hacer
			Si arreglo[j]<arreglo[min] Entonces
				min=j
			Fin Si
		Fin Para
		val_min=arreglo[min]
		//Estoy intercambiando los valores 
		arreglo[min]=arreglo[k]
		arreglo[k]=val_min
	Fin Para
	
	Escribir "El conjunto de números de menor a mayor: "
	Para i=1 Hasta n Con Paso 1 Hacer
		Escribir Sin Saltar arreglo[i]," "
	Fin Para
	Escribir ""
	
FinSubProceso

SubProceso calcularModa(arreglo, n)
	
	Definir i, j, cant, may Como Entero
	Definir arrg Como Real
	
	
	may=0
	arrg=0
	Para i=1 Hasta n Con Paso 1 Hacer
		cant=0
		Para j=1 Hasta n Con Paso 1 Hacer
			Si arreglo[i]=arreglo[j] Entonces
				cant=cant+1
				Si cant>1 Entonces
					arrg=arreglo[i]
				Fin Si
			Fin Si
		Fin Para
		
		Si cant>may Entonces
			may=cant
		Fin Si
	Fin Para
	
	Si may<=1 Entonces
		Escribir "No hay moda"
	SiNo
		Escribir "La moda es ", arrg, " (se repite ", may," veces)"
	Fin Si
	
	
FinSubProceso
