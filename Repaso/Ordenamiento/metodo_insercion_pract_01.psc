Algoritmo metodo_insercion
	
	Definir lista, dimen Como Entero
	
	Escribir "Ingresa el número de elementos de la lista: "
	Leer dimen
	
	Dimension lista[dimen]
	
	llenarLista(lista,dimen)
	
	Esperar 5 Segundos
	Limpiar Pantalla
	
	mostrarLista(lista, dimen)
	
	ordenamientoInsercion(lista, dimen)
	
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


SubProceso ordenamientoInsercion(lista, dimen)
	
	Definir i, j, aux Como Entero
	
	Para i=2 Hasta dimen Con Paso 1 Hacer
		Para j=1 Hasta i-1 Con Paso 1 Hacer
			Si lista[i]<lista[j] Entonces
				aux=lista[j]
				lista[j]=lista[i]
				lista[i]=aux
			Fin Si
		Fin Para
	Fin Para
	
FinSubProceso


