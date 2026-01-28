Algoritmo ejercicio_02
	
//	Realizar un programa que rellene un vector de tamaño N, con valores ingresados por el
//	usuario y muestre por pantalla el promedio de la suma de todos los valores ingresados.
	
	Definir v1,tamaño,i,acum Como Entero
	Definir promedio Como Real
	
	Escribir "------------------------------------"
	Escribir "Arreglo v1"
	Escribir "Ingresa el tamaño del arreglo: "
	Leer tamaño
	
	Dimension v1[tamaño]
	
	acum=0
	Para i=1 Hasta tamaño Con Paso 1 Hacer
		Escribir "Ingresa el valor de la posicion ",i," del arreglo " Sin Saltar
		Leer v1[i]
		acum=acum+v1[i]
	Fin Para
	
	
	promedio=acum/tamaño
	
	Escribir "El promedio de los valores ingresados es: ",promedio
	
FinAlgoritmo
