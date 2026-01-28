Algoritmo Procedimientos_03
	
	
//	Realizar un procedimiento que permita realizar la división entre dos números y muestre el cociente
//	y el resto utilizando el método de restas sucesivas.
//	El método de división por restas sucesivas consiste en restar el dividendo con el divisor hasta
//	obtener un resultado menor que el divisor, este resultado es el residuo, y el número de restas
//	realizadas es el cociente. Por ejemplo: 50 / 13:
//		50 - 13 = 37 una resta realizada
//		37 - 13 = 24 dos restas realizadas
//		24 - 13 = 11 tres restas realizadas
//	dado que 11 es menor que 13, entonces: el residuo es 11 y el cociente es 3.
	
	
	division()

	
FinAlgoritmo


SubProceso division()
	
	
	Definir n1, n2 Como Entero
	
	Escribir "Ingresa el dividendo: "
	Leer n1
	
	Escribir "Ingresa el divisor: "
	Leer n2
	
	Definir cont, acum Como Entero
	
	cont=0
	Repetir
		n1=n1-n2
		cont=cont+1
	Hasta Que n1<n2
	
	Escribir "El cociente es ",cont," y el residuo es ",n1
	
	
	
	
FinSubProceso
