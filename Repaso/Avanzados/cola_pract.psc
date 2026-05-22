Algoritmo colas_pract_01
	
	Definir cola, dimen, puntero_final, puntero_inicio Como Entero
	
	Escribir "Ingresar la dimensión de la cola: "
	Leer dimen
	
	Dimension cola[dimen]
	puntero_final=0
	puntero_inicio=0
	
	menu(dimen, cola, puntero_final, puntero_inicio)
	
	
	
FinAlgoritmo

SubProceso menu(dimen, cola, puntero_final, puntero_inicio)
	
	Definir op, i Como Entero
	
	Repetir
		Escribir ""
		Escribir "Menú de la cola"
		Escribir "1. Encolar"
		Escribir "2. Desencolar"
		Escribir "3. Mostrar cola"
		Escribir "4. Reiniciar punteros"
		leer op
		
		Segun op Hacer
			1:
				
				Si puntero_final<dimen Entonces
					puntero_final=puntero_final+1
					Escribir "Ingresa el valor: "
					Leer cola[puntero_final]
				SiNo
					Escribir "La cola está llena"
				Fin Si
				
			2:
				Si puntero_inicio<=puntero_final Entonces
					puntero_inicio=puntero_inicio+1
					Escribir "Valor desencolado: ",cola[puntero_inicio]
					cola[puntero_inicio]=0
				SiNo
					Escribir "La cola está vacia"
				Fin Si
			3:
				Escribir "Cola: " Sin Saltar
				Para i=1 Hasta puntero_final Con Paso 1 Hacer
					Escribir " ",cola[i]," " Sin Saltar
				Fin Para
			4: 
				Si puntero_inicio=puntero_final Entonces
					puntero_final=0
					puntero_inicio=1
				SiNo
					Escribir "La cola todavía se puede desencolar"
				Fin Si
			De Otro Modo:
				Escribir "No existe opción"
				
		Fin Segun
	
	Hasta Que op=5
	
	
FinSubProceso





