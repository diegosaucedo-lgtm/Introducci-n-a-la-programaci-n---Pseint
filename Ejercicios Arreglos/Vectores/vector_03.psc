Algoritmo ejercicio_03
	
//	Crear dos vectores que tengan el mismo tamaño (el tamaño se pedirá por teclado) y
//	almacenar en uno de ellos nombres de personas como cadenas. En el segundo vector se
//	debe almacenar la longitud de cada uno de los nombres (para ello puedes usar la función
//	Longitud() de PseInt). Mostrar por pantalla cada uno de los nombres junto con su longitud.
	
	Definir v1 Como Cadena
	Definir i,j,tamaño,v2 Como Entero
	
	Escribir "Ingresar el tamaño de los vectores: "
	Leer tamaño
	
	Dimension v1[tamaño]
	Para i=1 Hasta tamaño Con Paso 1 Hacer
		Escribir "Ingresa el ",i,"° nombre: " Sin Saltar
		Leer v1[i]
	Fin Para
	
	Dimension v2[tamaño]
	Para j=1 Hasta tamaño Con Paso 1 Hacer
		v2[j]=Longitud(v1[j])
		Escribir "El nombre ",v1[j]," tiene el tamaño de ",v2[j]," caracteres"
	Fin Para
	

FinAlgoritmo
