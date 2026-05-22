Algoritmo sub_proceso_04
	
	Definir num Como Entero
	
	Escribir "Ingresa un numero: "
	Leer num
	Escribir "Ahora enviamos el numero a la funcion por referencia y el resultado es: "
	elevarCuadrado(num)
	Escribir num
	
FinAlgoritmo

SubProceso elevarCuadrado(num Por Referencia)
	num=num*num
FinSubProceso
