Algoritmo ejercicio_04
	
//	4. Escribir un programa que calcule cuántos litros de combustible consumió un automóvil. El 
//	usuario ingresará una cantidad de litros de combustible cargados en la estación y una 
//	cantidad de kilómetros recorridos, después, el programa calculará el consumo (km/lt) y se lo 
//	mostrará al usuario. 
	
	Definir combustible, recorrido, consumo Como Real
	
	Escribir "Cálculo del consumo del carro"
	Escribir "Ingresa la cantidad de litros que se carga en la estacion: "
	Leer combustible
	
	Escribir "Ingresa el recorrido en kilometros: "
	Leer recorrido
	
	consumo=recorrido/combustible
	
	Escribir "El vehiculo consume ",consumo," km/lit"
FinAlgoritmo
