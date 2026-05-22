Algoritmo pilas_pract_01
	
	
	Definir pila, dimen, puntero Como Entero
	
	Escribir "----------------------------------------------"
	Escribir "PILA -> Metodo PUSH, metodo POP"
	Escribir "----------------------------------------------"
	Escribir "Ingresar el la dimensión de la pila: "
	Leer dimen
	
	Dimension pila[dimen]
	
	puntero=0
	
	menu(dimen, pila, puntero)
	
	
FinAlgoritmo

SubProceso menu(dimen, pila, puntero Por Referencia)
	
	Definir op como entero
	Repetir
		
		
		Esperar 1 Segundos
		Limpiar Pantalla
		
		Escribir "MENU"
		Escribir "1. Apilar/PUSH"
		Escribir "2. Desapilar/POP"
		Escribir "3. Mostrar pila normal"
		Escribir "4. Mostrar pila como torre de platos: "
		Leer op
		
		Segun op Hacer
			1:
				llenarPila_Push(pila, dimen, puntero)
			2:
				quitarPila_Pop(pila, dimen, puntero)
			3:
				mostrarPilaNorma(pila, dimen, puntero)
			4:
				mostrarPilaPlato(pila, dimen, puntero)
				
			De Otro Modo:
				Escribir "ERROR"
				Esperar 4 Segundos
				Limpiar Pantalla
				
				menu(dimen, pila, puntero)
		Fin Segun
	Hasta Que op>4 o op<0
	
FinSubProceso



SubProceso llenarPila_Push(pila, dimen, punteros Por Referencia)
	
	Escribir "METODO PUSH"
	Escribir "Llenar Pila: "
	Si punteros<dimen Entonces
		punteros=punteros+1
		Escribir "Ingresar el ", punteros,"° valor :" Sin Saltar
		Leer pila[punteros]
	SiNo
		Escribir "Pila llena"
	FinSi

FinSubProceso

SubProceso quitarPila_Pop(pila, dimen, puntero Por Referencia)
	
	Escribir "METODO POP"
	Escribir "Quitar Pila: "
	
	Si puntero>0 Entonces
		Escribir "Quitar el valor ", puntero, "° :", pila[puntero]
		pila[puntero]=0
		puntero=puntero-1
	SiNo
		Escribir "Pila vacia"
	Fin Si
	
	
FinSubProceso



SubProceso mostrarPilaNorma(pila, dimen, puntero)
	
	Limpiar Pantalla
	Definir i Como Entero
	Para i=1 Hasta dimen Con Paso 1 Hacer
		Escribir "Valor ", i,"° : ", pila[i]
	Fin Para
	Esperar 5 segundos
FinSubProceso


SubProceso mostrarPilaPlato(pila, dimen, puntero)
	
	Limpiar Pantalla
	Definir i Como Entero
	Para i=dimen Hasta 1 Con Paso -1 Hacer
		Escribir "Valor ", i,"° : ", pila[i]
	Fin Para
	Esperar 5 segundos
FinSubProceso


