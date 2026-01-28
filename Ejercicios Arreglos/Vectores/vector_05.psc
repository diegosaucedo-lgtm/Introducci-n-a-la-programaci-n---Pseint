Algoritmo ejercicio_05
	
	
	
//	Programe una función que calcule el producto de un arreglo de números enteros. Para esto
//	imagine, por ejemplo, que para un vector V de tamaño 4, el producto de todos los valores es
//	igual a (V[1]*V[2]*V[3]*V[4])
	
	
	Definir tamaño, i, v1,acum Como Entero
	
	Escribir "------------------------------------"
	Escribir "Arreglo v1"
	
	Escribir "Digita el tamaño del arreglo: "
	Leer tamaño
	
	Dimension v1[tamaño]
	
	acum=1
	Para i=1 Hasta tamaño Con Paso 1 Hacer
		Escribir "Ingresa el ",i,"° valor del arreglo :" Sin Saltar
		Leer v1[i]
		acum=acum*v1[i]
	Fin Para
	
	Escribir "El producto de los valores del arreglo es ",acum
	
	
	
	
FinAlgoritmo
