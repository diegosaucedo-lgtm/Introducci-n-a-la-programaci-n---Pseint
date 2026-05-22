Algoritmo sub_proceso_02
	
	Definir num Como Entero
	
	num=2
	
	Escribir num
	Escribir "Ahora enviamos el numero a la funcion por Referencia y el resultado es: "
	elevarCuadrado(num)
	Escribir num
	
FinAlgoritmo
SubProceso elevarCuadrado(num Por Referencia) //Haces que la variable pueda ser modificada
	num=num*num
FinSubProceso

