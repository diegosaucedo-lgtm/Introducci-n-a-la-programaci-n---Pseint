Algoritmo Procedimientos_09
	
//	Diseñar un procedimiento que reciba una frase, y el programa remueva todas las vocales repetidas.
//	Al final el procedimiento mostrará la frase final.
//	Por ejemplo:
//	Entrada: "Habia una vez un barco"
//	Salida: "Habi un vez n brco"
//	Se marcan en rojo las repetidas sólo para explicar la consigna. Las vocales ?e?, ?i? y ?o? quedan
//	al no estar repetidas.
	//		
	
	espacioBlanco()
	
FinAlgoritmo

SubProceso espacioBlanco()
	
	Definir frase,frasef Como Caracter
	Definir i,ca,ce,ci,co,cu Como Entero
	
	Escribir "Ingresa una frase:"
	Leer frase
	
	ca=0
	ce=0
	ci=0
	co=0
	cu=0
	Para i=1 Hasta Longitud(frase) Con Paso 1 Hacer
		
		
		Segun SubCadena(frase,i,i) Hacer
			
			"a":
				ca=ca+1
				Si ca<=1 Entonces
					frasef=Concatenar(SubCadena(frase,i,i),"")
				SiNo
					frasef=Concatenar(" ","")
				Fin Si
			"e":
				ce=ce+1
				Si ce<=1 Entonces
					frasef=Concatenar(SubCadena(frase,i,i),"")
				SiNo
					frasef=Concatenar(" ","")
				Fin Si
			"i":
				ci=ci+1
				Si ci<=1 Entonces
					frasef=Concatenar(SubCadena(frase,i,i),"")
				SiNo
					frasef=Concatenar(" ","")
				Fin Si
			"o":
				co=co+1
				Si co<=1 Entonces
					frasef=Concatenar(SubCadena(frase,i,i),"")
				SiNo
					frasef=Concatenar(" ","")
				Fin Si
			"u":
				cu=cu+1
				Si ca<=1 Entonces
					frasef=Concatenar(SubCadena(frase,i,i),"")
				SiNo
					frasef=Concatenar(" ","")
				Fin Si
			De Otro Modo:
				frasef=Concatenar(SubCadena(frase,i,i),"")
		Fin Segun
		
		Escribir Sin Saltar frasef
		
		
	Fin Para
	
FinSubProceso







