Algoritmo s02
	
	//Hallo el area del cuadrado, del triangulo, y la circunferencia
	Definir a,b,alf,l,r,Atri,Acua,Acirc Como Real
	
	Escribir "Ingresar el lado del cuadrado: "
	Leer l //4
	
	Escribir "Ingresar el radio de la circunferencia: "
	Leer r //1.75
	
	Escribir "Ingrese los lados del triangulo y el angulo: "
	Leer a,b,alf //Ingreso de datos masivo: 2,16,90
	
	
	Acua=l^2
	Acirc=PI*r^2
	Atri=a*b*sen(alf*PI/180)/2
	
	Escribir "---------------------------------"
	Escribir "Area del cuadrado: ",Acua
	Escribir "Area del circulo: ",Acirc
	Escribir "Area del triangulo: ",Atri
	Escribir "---------------------------------"
	
	//Realizar preguntas con reslultados booleano. Las operaciones relacionales están relacionadas con 
	//los resultado VERDADERO/FALSO
	Escribir "Area del cuadrado mayor que la del triangulo"
	Escribir "Respuesta: ",Acua>Atri // Al utilizar operadores relacionales dan como resultado un valor lógico
	Escribir "---------------------------------"
	Escribir "Area del cuadrado mayor o igual que la del circulo"
	Escribir "Respuesta: ",Acua>Acirc
	Escribir "---------------------------------"
	Escribir "Area del triangulo distinto que la del cuadrado"
	Escribir "Respuesta: ",Atri>Acua
	
FinAlgoritmo
