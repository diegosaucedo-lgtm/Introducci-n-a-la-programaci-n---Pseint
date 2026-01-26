Algoritmo ejercicio_03
	
//	3. A partir de una conocida cantidad de metros que el usuario ingresa a través del teclado se 
//	debe obtener su equivalente en centímetros, en milímetros y en pulgadas.  
	
	Definir metros, centimetros, milimetros, pulgadas Como Real
	
	Escribir "Conversión de metros a centímetros, milímetros y pulgadas"
	Escribir "Ingresa la longitud en metros: "
	Leer metros
	
	centimetros=metros*100
	milimetros=metros*1000
	pulgadas=centimetros/2.54
	
	Escribir "La longitud en centimetros equivale a ",centimetros
	Escribir "La longitud en milimetros equivale a ",milimetros
	Escribir "La longitud en pulgadas equivale a ",pulgadas
	
FinAlgoritmo
