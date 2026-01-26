Algoritmo ejercicio_11
	
//	La empresa "Te llevo a todos lados" está destinada al alquiler de autos y tiene un sistema
//	de tarifa que consiste en cobrar el alquiler por hora. Si el cliente devuelve el auto dentro
//	de las 2 horas de uso el valor que corresponde pagar es de $400 pesos y la nafta va de
//	regalo. Cuando el cliente regresa a la empresa pasadas las 2 horas, se ingresan la
//	cantidad de litros de nafta gastados y el tiempo transcurrido en horas. Luego, se le cobra
//	40 pesos por litro de nafta gastado, y la hora se fracciona en minutos, cobrando un total
//	de $5,20 el minuto de uso. Realice un programa que permita registrar esa información y el
//	total a pagar por el cliente.
//	
	
	Definir h,l,p Como Real
	
	Escribir "Ingresa la horas transcurridas del alquiler: "
	Leer h 
	
	Si h>2 Entonces
		Escribir "Ingresa los litros de  nafta gastados: "
		Leer l
		Escribir "Ingresa de nuevo las horas transcurridas de alquiler: "
		Leer h 
		
		p=l*40+h*60*5.20
		
		Escribir "El total a pagar es ",p," pesos"
		
	SiNo
		p=400
		Escribir "El total a pagar es ",p," pesos"
		Escribir "La nafta es de regalo"
	Fin Si
		
FinAlgoritmo
