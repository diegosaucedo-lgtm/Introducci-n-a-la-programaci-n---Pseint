Algoritmo Subprogramas_01
	
	
//	Realizar un subproceso que calcule la suma de dos números. En el algoritmo principal le pediremos
//		al usuario los dos números para pasárselos al suproceso. Después el subproceso calculará la
//		suma y lo devolverá para impreso.
	
	
	
	Definir n1, n2 Como Entero
	
	Escribir "Ingresar primer numero: "
	Leer n1
	
	Escribir "Ingresa segundo numero: "
	Leer n2
	
	suma(n1,n2)
	
FinAlgoritmo


SubProceso suma (n1,n2)
	Definir s Como Entero
	s=n1+n2
	Escribir "La suma es ",s
	
FinSubProceso
	