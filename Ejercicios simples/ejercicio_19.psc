Algoritmo ejercicio_19
	
//	19. Un vendedor recibe un sueldo base más un 10% extra por comisión de sus ventas, el 
//	vendedor desea saber cuánto dinero obtendrá por concepto de comisiones por las tres 
//	ventas que realiza en el mes y el total que recibirá en el mes tomando en cuenta su sueldo 
//	base y comisiones. 
	
	Definir sueldo_base, comisiones, venta1, venta2, venta3, sueldo_final Como Real
	
	Escribir "Calcular el sueldo por comisiones"
	Escribir "Ingresa el sueldo base :" Sin Saltar
	Leer sueldo_base
	Escribir ""
	Escribir "Ingresa el monto por venta 1: " Sin Saltar
	Leer venta1
	
	Escribir "Ingresa el monto por venta 2: " Sin Saltar
	Leer venta2
	
	Escribir "Ingresa el monto por venta 3: " Sin Saltar
	Leer venta3
	
	comisiones=(venta1+venta2+venta3)*0.10
	
	sueldo_final=sueldo_base+comisiones
	
	Escribir ""
	Escribir "El sueldo final es s/. ",sueldo_final
	
	
	
FinAlgoritmo
