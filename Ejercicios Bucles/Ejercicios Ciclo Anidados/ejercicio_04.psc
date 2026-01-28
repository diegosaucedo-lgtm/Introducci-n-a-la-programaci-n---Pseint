Algoritmo ejercicio_04
	
	
	//	Una compañía de seguros tiene contratados a n vendedores. Cada vendedor realiza 
	//	múltiples ventas a la semana. La política de pagos de la compañía es que cada vendedor 
	//	recibe un sueldo base más un 10% extra por comisiones de sus ventas. El gerente de la 
	//	compañía desea saber, por un lado, cuánto dinero deberá pagar en la semana a cada 
	//	vendedor por concepto de comisiones de las ventas realizadas, y por otro lado, cuánto 
	//	deberá pagar a cada vendedor como sueldo total (sueldo base + comisiones). Para cada 
	//	vendedor ingresar cuanto es su sueldo base, cuantas ventas realizó y cuanto cobró por 
	//	cada venta
	
	Definir n,i,j, cant_v Como Entero
	Definir ac,pag_v, st, sb,comision Como Real
	Definir nombre Como Caracter
	
	Escribir "Ingresa la cantidad de vendedores: "
	Leer n
	
	
	Para i=1 Hasta n Con Paso 1 Hacer
		Escribir "Ingresa el nombre completo del Vendedor: "
		Leer nombre
		Escribir "Ingresar el sueldo base: "
		Leer sb
		Escribir "Digita la cantidad de ventas; "
		Leer cant_v
		
		ac=0
		Para j=1 Hasta cant_v Con Paso 1 Hacer
			Escribir "Digita el precio de la ",j,"° venta: "
			Leer pag_v
			comision=pag_v*10/100
			Escribir "El pago del 10% es ",comision
			ac=ac+comision
		Fin Para
		
		st=sb+ac
		
		Escribir "----------------------------------------------"
		Escribir "El importe del vendedor " Mayusculas(nombre)
		Escribir "El total de comisión por cada venta es ",ac
		Escribir "El sueldo base es ",sb
		Escribir "El sueltdo total es ",st
		
	Fin Para
	
	
	
	
	
FinAlgoritmo
