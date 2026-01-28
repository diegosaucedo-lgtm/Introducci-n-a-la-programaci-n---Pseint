Algoritmo Funciones_04
//	Realizar una función que calcule y retorne la suma de todos los divisores del número n distintos
	//	de n. El valor de n debe ser ingresado por el usuario.
	
	Definir n,suma Como Entero
    Escribir "Ingrese un numero entero n:"
    Leer n
    suma <- SumaDivisor(n) // Llamamos a la funcion SumaDivisores y guardamos el resultado en suma
    Escribir "La suma de los divisores de ", n, " distintos de ", n, " es: ", suma
	
FinAlgoritmo

Funcion suma <- SumaDivisor(n)
		// Esta funcion recibe un numero entero n y retorna la suma de sus divisores distintos de n
		//Variable
	Definir suma, i como Entero
		//Inicio
        suma <- 0 // Inicializamos la suma en cero
        Para i<-1 Hasta n-1 Con Paso 1 Hacer
            // Recorremos los numeros desde 1 hasta n-1
            Si n MOD i = 0 Entonces
                // Si i es divisor de n, lo sumamos a la suma
                suma <- suma + i
            FinSi
        FinPara
        // Retornamos el valor de la suma
FinFuncion

	

