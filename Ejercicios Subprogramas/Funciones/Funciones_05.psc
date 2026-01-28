Funcion j <- Pag_j (turno,horas,fest )
	Definir j Como Real 
	
	Segun turno Hacer
		"diurno" o "diurna" o "Diurno" o "Diurna":
			Si fest="si" o fest="Sí" o fest="sí" o fest="Si" Entonces
				j=horas*(110*90/100)
			SiNo
				j=horas*90
			Fin Si
		"nocturno" o "nocturna" o "Nocturno" o "Nocturna":
			Si fest="si" o fest="Sí" o fest="sí" o fest="Si" Entonces
				j=horas*(115*125/100)
			SiNo
				j=horas*125
			Fin Si
		De Otro Modo:
			Escribir "Error"
	Fin Segun

	
	
Fin Funcion

Algoritmo Funciones_05
	
	
//Los empleados de una fábrica trabajan en dos turnos: Diurno y Nocturno. Se desea calcular el
//jornal diario de acuerdo con las siguientes reglas:
//		a) La tarifa de las horas diurnas es de $ 90
//		b) La tarifa de las horas nocturnas es de $ 125
//		c) En caso de ser feriado, la tarifa se incrementa en un 10% si el turno es diurno y en
//			un 15% si el turno es nocturno.
//	El programa debe solicitar la siguiente información al usuario: el nombre del trabajador, el día
//	de la semana, el turno (diurno o nocturno) y la cantidad de horas trabajadas. Además, debemos
//	preguntarle al usuario si el día de la semana (lunes, martes, miércoles, etc.) era festivo o
//	no, para poder calcular el jornal diario. Utilice una función para realizar el cálculo.
	
	
	
	Definir jornal Como Real
	Definir nombre,dia,turno, fest Como Caracter
	Definir horas Como Entero
	
	Escribir "Ingresa el nombre completo del trabajador: "
	Leer nombre
	
	Escribir "Ingresa el dia de trabajo: "
	Leer dia
	
	Escribir "Era festivo: " Sin Saltar
	Leer fest
	
	Escribir "Ingresa el turno:"
	Leer turno
	
	Escribir "Ingresa la cantidad de horas trabajadas: "
	Leer horas
	
	jornal=Pag_j(turno,horas,fest)
	
	Escribir "El pago total al trabajador ",nombre," es ",jornal
	
	
FinAlgoritmo
