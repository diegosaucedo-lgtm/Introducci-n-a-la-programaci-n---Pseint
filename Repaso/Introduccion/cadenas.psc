Algoritmo s23_cadenas
	
//	Definir n Como Cadena
//	
//	Escribir "Ingresa una palabra"
//	Leer n
//	
//	Escribir Longitud(n)
	
	Definir cad1,cad2 como cadena;
	Definir num como Entero;
	cad1<-"informática";
	Escribir "La longitud de cad1 es ",longitud(cad1); //La funcion longitud también cuenta los espacios como caracter
	Escribir "El primer carácter de cad1 es ", subcadena(cad1,1,1);
	Escribir "El último carácter de cad1 es ", subcadena(cad1,longitud(cad1),longitud(cad1));
	Escribir "La cad1 en mayúsculas es ",mayusculas(cad1);
	cad2<-concatenar(cad1," es muy interesante");
	Escribir cad2;
	num<-ConvertirANumero("10");
	Escribir num;
	Escribir Concatenar("El número es ",ConvertirATexto(num));
	Escribir "El número es ",num;	
	
	
	
	
	
FinAlgoritmo
