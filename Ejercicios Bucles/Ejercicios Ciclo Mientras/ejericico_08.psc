Algoritmo Bucle_Mientras
	
	
//	Escribir un programa que calcule cuántos dígitos tiene un número entero positivo sin 
//	convertirlo a cadena (pista: se puede hacer dividiendo varias veces entre 10). Nota: 
//	investigar la función trunc()
	
	
	Definir ent, cont, num Como Entero
	
	Escribir "Ingresa un número positivo: "
	Leer ent
	
	cont=0
	
	num=ent
	
	Mientras ent>0 Hacer
		ent=trunc(ent/10)
		cont=cont+1
	Fin Mientras
	
	Si num=0 Entonces
		Escribir "El número ", num, " posee 1 dígito."
	SiNo
		Escribir "El número ", num, " posee ", cont, " dígitos."
	Fin Si
	
	
	
	
FinAlgoritmo
