Algoritmo metodo_insercion
	
	Definir lista, dimen Como Entero
	
	Escribir "Ingresa el número de elementos de la lista: "
	Leer dimen
	
	Dimension lista[dimen]
	
	llenarLista(lista,dimen)
	
	Esperar 5 Segundos
	Limpiar Pantalla
	
	mostrarLista(lista, dimen)
	
	ordenamientoSeleccion(lista, dimen)
	
	mostrarLista(lista, dimen)
	
FinAlgoritmo

SubProceso llenarLista(lista,dimen)
	
	
	Definir i Como Entero
	Escribir "LLENAR LISTA"
	Para i=1 Hasta dimen Con Paso 1 Hacer
		Escribir "Ingresar el ",i,"° valor de la lista: " Sin Saltar
		Leer lista[i]
	Fin Para
	
	
FinSubProceso


SubProceso mostrarLista(lista, dimen)
	
	Definir i Como Entero
	Escribir "MOSTRAR LISTA"
	Escribir "Lista[",dimen,"] : " Sin Saltar
	Para i=1 Hasta dimen Con Paso 1 Hacer
		Escribir lista[i]," "Sin Saltar
	Fin Para
	Escribir ""
FinSubProceso


SubProceso ordenamientoSeleccion(lista, dimen)
	
	
	Definir may, i, j, k Como Entero
	
	may=0
	Para i=1 Hasta dimen Con Paso 1 Hacer
		Para k=i Hasta dimen Con Paso 1 Hacer
			Si lista[k]>may Entonces
				may=lista[k]
				j=k
			Fin Si
		Fin Para
		lista[j]=lista[i]
		lista[i]=may
		may=0
	Fin Para
	
FinSubProceso
