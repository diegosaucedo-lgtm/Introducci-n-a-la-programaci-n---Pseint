Algoritmo listas_simples_i
	//Se ingresa una lista de nombres o apellidos (la lista termina cuando se ingresa un nombres en 
	//blanco (no espacio) no permitiendo ingresar repetidos y luego se ordena internamente y se muestra
	
	Definir nombre, lista, aux como cadenas
	Definir se_repite Como Logico
	Definir cant, i, j, k, l, pos_menor Como Entero
	Dimension lista[50]
	
	Escribir "Ingrese los nombres (enter en blanco para terminar): "
	
	//Esta parte del programa lee la lista
	cant=1
	Leer nombre
	Mientras nombre<>"" Hacer
		lista[cant]=nombre
		cant=cant+1
		//Lee un nombre y verifica que no este repetido
		Repetir
			leer nombre
			se_repite=Falso
			Para i=1 Hasta cant-1 Con Paso 1 Hacer
				Si nombre=lista[i] Entonces
					se_repite=Verdadero
				Fin Si
			Fin Para
		Hasta Que No se_repite
	Fin Mientras
	
	//Esta parte del programa ordena
	Para j=1 Hasta cant-2 Con Paso 1 Hacer
		pos_menor=j //Busca el menor entre j y cant
		Para k=j+1 Hasta cant-1 Con Paso 1 Hacer
			Si lista[k]<lista[pos_menor] Entonces
				pos_menor=k
			Fin Si
		Fin Para
		aux=lista[j]
		lista[j]=lista[pos_menor]
		lista[pos_menor]=aux
	Fin Para
	
	//Muestra como queda la lista
	Escribir "Muestra la lista ordenada"
	Para l=1 Hasta cant-1 Con Paso 1 Hacer
		Escribir "  ", lista[l]
	Fin Para
	
	
FinAlgoritmo
