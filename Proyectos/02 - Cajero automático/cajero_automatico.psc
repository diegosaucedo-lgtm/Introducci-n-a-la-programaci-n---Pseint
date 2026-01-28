Algoritmo cajero_automatico
//2. **Simulación de un Cajero Automático**:
//	Diseña un simulador de cajero automático que permita al usuario realizar 
//	operaciones como consultar saldo, depositar dinero, retirar dinero y 
//	cambiar la contraseña. Implementa un sistema de autenticación básico.
	
	//Datos preliminares
	Definir titular_cuenta, num_cuenta, contraseña_cuenta Como Caracter
	Definir saldo_cuenta Como Real
	
	Dimension titular_cuenta[2]
	titular_cuenta[1]="Diego Abraham Saucedo Ayola"
	titular_cuenta[2]="Anastacio Saucedo Ayola"
	
	Dimension num_cuenta[2]
	num_cuenta[1]="0814-26587-6"
	num_cuenta[2]="0814-26587-7"
	
	Dimension contraseña_cuenta[2]
	contraseña_cuenta[1]="pollito1"
	contraseña_cuenta[2]="putada39"
	
	Dimension saldo_cuenta[2]
	saldo_cuenta[1]=547.25
	saldo_cuenta[2]=47.25
	
	//Autenticacion 
	Definir ingr_cuenta, ingr_contraseña Como Caracter
	Definir i, indCuenta, rep, op Como Entero
	Definir saldo_camb Como Real
	//Operaciones
	Repetir
		Esperar 3 Segundos
		Limpiar Pantalla
		//Ingreso de datos
		Escribir "*****************************"
		Escribir "INGRESO A CUENTA"
		Escribir "*****************************"
		Escribir "Ingresa el número de la cuenta: " sin saltar
		Leer ingr_cuenta
		Escribir "Ingresa tu contraseña: " sin saltar
		Leer ingr_contraseña
		
		//Entrecruzamiento de los datos
		Para i=1 Hasta 2 Con Paso 1 Hacer
			
			Si num_cuenta[i]=ingr_cuenta y contraseña_cuenta[i]=ingr_contraseña Entonces
				indCuenta=i
			SiNo
				Si num_cuenta[i]=ingr_cuenta y contraseña_cuenta[i]<>ingr_contraseña Entonces
					indCuenta=-1
				SiNo
					Si num_cuenta[i]<>ingr_cuenta y contraseña_cuenta[i]=ingr_contraseña Entonces
						indCuenta=-2
					SiNo
					Fin Si
				Fin Si
			Fin Si
			
		Fin Para
		
		Si indCuenta>0 Entonces
			Escribir "DATOS CORRECTO"
			Escribir "INICIAR SESION"
			
			Limpiar Pantalla
			Esperar 5 Segundos
			
			Escribir "-----------------------------------------------"
			Escribir "Bienvenido, ",titular_cuenta[indCuenta]
			Escribir "-----------------------------------------------"
			Escribir "MENU OPERACIONES"
			Escribir "Elige la operación: "
			Escribir "1. Consultar saldo"
			Escribir "2. Depositar "
			Escribir "3. Retirar "
			Escribir "********************************"
			Escribir "4. Cambiar contraseña"
			Escribir "********************************"
			Escribir "5. Regresar a MENU PRINCIPAL "
			Escribir "-----------------------------------------------"
			Leer op
			
			Segun op Hacer
				1:
					Escribir titular_cuenta[indCuenta]
					Escribir "SALDO EN CUENTA: S/.", saldo_cuenta[indCuenta]
				2:
					Escribir "DEPOSITO"
					Escribir "Ingresa el monto: S/" Sin Saltar
					Leer saldo_camb
					
					saldo_cuenta[indCuenta]=saldo_cuenta[indCuenta]+saldo_camb
					
					Escribir "SALDO ACTUAL: S/.", saldo_cuenta[indCuenta]
					
					
				3:
					Escribir "RETIRO"
					Escribir "Ingresa el monto: S/" Sin Saltar
					Leer saldo_camb
					
					saldo_cuenta[indCuenta]=saldo_cuenta[indCuenta]-saldo_camb
					
					Escribir "SALDO ACTUAL: S/.", saldo_cuenta[indCuenta]
				4:
					Escribir "CAMBIAR CONTRASEÑA"
					Escribir "NUEVA CONTRASEÑA:" Sin Saltar
					Leer ingr_contraseña
					
					contraseña_cuenta[indCuenta]=ingr_contraseña
					
					Escribir "CONTRASEÑA ACTUAL",contraseña_cuenta[indCuenta]
					
					indCuenta=-58
					
				5:
					indCuenta=-5
					
				De Otro Modo:
					Escribir "Errror"
			Fin Segun
			
			
			
			
		SiNo
			Si indCuenta=-1 Entonces
				Escribir "NUMERO DE CUENTA INCORRECTA"
				Escribir "VUELVA A INTENTARLO, POR FAVOR"
				Escribir "***************************************************************************"
				Escribir "SI SE EQUIVOCA TRES VECES SE LE BLOQUEARÁ EL ACCESO A LA CUENTA POR 1 HORA"
				Escribir "***************************************************************************"
			SiNo
				Si indCuenta=-2 Entonces
					Escribir "CONTRASEÑA INCORRECTA"
					Escribir "VUELVA A INTENTARLO, POR FAVOR"
					Escribir "***************************************************************************"
					Escribir "SI SE EQUIVOCA TRES VECES SE LE BLOQUEARÁ EL ACCESO A LA CUENTA POR 1 HORA"
					Escribir "***************************************************************************"
				SiNo
					indCuenta=0
					Escribir "DATOS INCORRECTOs"
					Escribir "VUELVA A INTENTARLO, POR FAVOR"
					Escribir "***************************************************************************"
					Escribir "SI SE EQUIVOCA TRES VECES SE LE BLOQUEARÁ EL ACCESO A LA CUENTA POR 1 HORA"
					Escribir "***************************************************************************"
				Fin Si
			Fin Si
		Fin Si
		
		rep=indCuenta
		
	Hasta Que rep>0
	
FinAlgoritmo
