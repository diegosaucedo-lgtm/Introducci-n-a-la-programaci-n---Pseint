Algoritmo criba_de_erastostenes
	Definir n, i, j, k, r, numeros_ Como Entero
	Escribir 'Números primos según la criba de eratóstenes: '
	Escribir '**********************************************'
	Escribir 'Generar números primos hasta : 'Sin Saltar
	Leer n
	Escribir 'Los números generados desde 1  hasta n son : '
	Dimensionar numeros_(n)
	Para i<-1 Hasta n Con Paso 1 Hacer
		numeros_[i] <- i
		Escribir numeros_[i], '  'Sin Saltar
	FinPara
	Escribir ''
	Escribir 'Los números primos son: '
	Para j<-2 Hasta n Con Paso 1 Hacer
		Si j^2<n Entonces
			Para k<-j+1 Hasta n Con Paso 1 Hacer
				Si (numeros_[k]>0) Y (numeros_[j]>0) Y (numeros_[k] MOD numeros_[j]=0) Entonces
					numeros_[k] <- 0
				FinSi
			FinPara
		SiNo
			j <- n
		FinSi
	FinPara
	Para r<-1 Hasta n Con Paso 1 Hacer
		Si numeros_[r]>0 Entonces
			Escribir numeros_[r], ' 'Sin Saltar
		FinSi
	FinPara
	Escribir ''
FinAlgoritmo
