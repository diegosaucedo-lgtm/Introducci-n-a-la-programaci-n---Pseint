Algoritmo conversor_de_numeros
	Definir num, conv, cociente, resto Como Entero
	Definir binario Como Cadena
	num <- 0
	cociente <- 0
	resto <- 0
	binario <- ''
	Escribir 'Ingresar un numero decimal: '
	Leer num
	Escribir 'Ingresa la base numeral a convertir: '
	Leer conv
	Si num=0 Entonces
		binario <- '0'
	SiNo
		Mientras num>0 Hacer
			cociente <- trunc(num/conv)
			resto <- num MOD conv
			binario <- binario+ConvertirATexto(resto)
			num <- cociente
		FinMientras
	FinSi
	Escribir 'El numero en base ', conv, ' es ', binario
FinAlgoritmo
