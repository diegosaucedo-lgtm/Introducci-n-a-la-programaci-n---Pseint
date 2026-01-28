Algoritmo sistema_de_inventario
//1. Sistema de Gestión de Inventarios:
//	Crea un programa que permita gestionar el inventario de una tienda. El programa debe permitir agregar 
//	productos, eliminar productos, buscar productos por nombre o ID, y mostrar el inventario completo.
	
	Definir nombre, letra Como Caracter
	Definir id, cant, op, cont,i,j,k Como Entero
	Definir p_unitario, p_total Como Real
	Definir inventario Como Caracter
	
	Dimension id[20]
	Dimension nombre[20]
	Dimension cant[20]
	Dimension p_unitario[20]
	Dimension p_total[20]
	Dimension inventario[21,5]
	
	//Inicializar los arreglos con valores nulos o vacios
	Para i=1 Hasta 20 Con Paso 1 Hacer
		
		id[i]=0
		nombre[i]=""
		cant[i]=0
		p_unitario[i]=0
		p_total[i]=0
		
	Fin Para
	
	//Inicializar la matriz
	inventario[1,1]="  ID           "
	inventario[1,2]="  NOMBRE       "
	inventario[1,3]="  CANTIDAD     "
	inventario[1,4]="  PRECIO U     "
	inventario[1,5]="  PRECIO T     "
	
	Para j=2 Hasta 21 Con Paso 1 Hacer
		Para k=1 Hasta 5 Con Paso 1 Hacer
			inventario[j,k]=""
		Fin Para
	Fin Para
	
	
	cont=0
	Repetir
		Esperar 1 segundos
		Limpiar Pantalla
		
		menuInventario()
		
		Leer op
		
		Segun op Hacer
			1:
				ingresarProducto(cont,id, nombre, cant, p_unitario, p_total)
			2:
				eliminarProducto(id, nombre, cant, p_unitario,p_total)
			3:
				buscarProducto(id, nombre, cant, p_unitario, p_total)
			4:
				mostrarInventario(inventario,id,nombre,cant,p_unitario,p_total)
			De Otro Modo:
				Limpiar Pantalla
				Escribir "-----------------------------------"
				Escribir "Opción inválida"
				Escribir "Vuelva a escoger la opción correcta"
				Escribir "-----------------------------------"
		Fin Segun
		
		Escribir "Si desea regresar al menú aprieta la tecla S: "
		Leer letra
		Si  letra="s" o letra="S" Entonces
			op=5
		Fin Si
		
	Hasta Que op<=4 y op<>0
	
	
FinAlgoritmo


SubProceso menuInventario()
	
	Escribir "INVENTARIO DE TIENDA"
	Escribir "*****************************************"
	Escribir "Escoge la opción que desea realizar: "
	Escribir "1. Agregar producto"
	Escribir "2. Eliminar producto"
	Escribir "3. Buscar producto"
	Escribir "4. Mostrar inventario de productos"
	Escribir "*****************************************"
	
FinSubProceso

SubProceso ingresarProducto(cont, id, nombre,cant,p_unitario,p_total)
	
	Definir bucle1 Como Caracter
	
	Repetir
		
		Limpiar Pantalla 
		
		
		cont=cont+1
		Escribir "********************************"
		Escribir "Agregar productos"
		Escribir "********************************"
		Escribir "Ingresa el ID del producto: "
		Leer id[cont]
		Escribir "Ingresa el nombre del producto: "
		Leer nombre[cont]
		Escribir "Ingresa la cantidad del producto: "
		Leer cant[cont]
		Escribir "Ingresa el precio por unidad del producto: "
		Leer p_unitario[cont]
		
		p_total[cont]=p_unitario[cont]*cant[cont]
		
		Escribir "Escriba -S- si desea continuar o marque"
		Leer bucle1
		Escribir "*****************************************"
		
	Hasta Que bucle1<>"S"
	
FinSubProceso

SubProceso eliminarProducto(id, nombre, cant, p_unitario,p_total)
	
	Definir opc, idEliminar,i,indEliminar Como Entero
	Definir nombreEliminar,bucle2 Como Caracter
	
	Repetir
		Repetir
			
			Limpiar Pantalla
			
			Escribir "********************************"
			Escribir "Eliminar productos"
			Escribir "********************************"
			Escribir "Escoge la opción: "
			Escribir "1. Ingresa el ID del producto que desea eliminar"
			Escribir "2. Ingresa el nombre del producto que desea eliminar"
			
			
			leer opc
			Segun opc Hacer
				1:
					Escribir "ID: " Sin Saltar
					leer idEliminar
					
					Para i=1 Hasta 20 Con Paso 1 Hacer
						
						Si id[i]=idEliminar Entonces
							indEliminar=i
						Fin Si
						
					Fin Para
					
					id[indEliminar]=0
					nombre[indEliminar]=""
					cant[indEliminar]=0
					p_unitario[indEliminar]=0
					p_total[indEliminar]=0
					
					Escribir "Producto eliminado"
				2:
					Escribir "NOMBRE: " Sin Saltar
					leer nombreEliminar
					
					Para i=1 Hasta 20 Con Paso 1 Hacer
						
						Si nombre[i]=nombreEliminar Entonces
							indEliminar=i
						Fin Si
						
					Fin Para
					
					id[indEliminar]=0
					nombre[indEliminar]=""
					cant[indEliminar]=0
					p_unitario[indEliminar]=0
					p_total[indEliminar]=0
					
					Escribir "Producto eliminado"
					
				De Otro Modo:
					Escribir "Opción inválida"
					Escribir "Vuelva a escoger la opción correcta"
			Fin Segun
		Hasta Que opc=1 o opc=2
		
		Escribir "Escriba -S- si desea continuar o marque"
		Leer bucle2
		Escribir "*****************************************"
	Hasta Que bucle2<>"S"

FinSubProceso

SubProceso buscarProducto(id, nombre, cant, p_unitario, p_total)
	
	Definir bucle3, nombreBuscar Como Caracter
	Definir opc, idBuscar, indBuscar,i Como Entero
	
	Repetir
		Repetir
			
			Limpiar Pantalla
			
			Escribir "********************************"
			Escribir "Buscar productos"
			Escribir "********************************"
			Escribir "Escoge la opción: "
			Escribir "1. Buscar con ID del producto"
			Escribir "2. Buscar con el nombre del producto"
			
			
			leer opc
			Segun opc Hacer
				1:
					Escribir "ID: " Sin Saltar
					leer idBuscar
					
					Para i=1 Hasta 20 Con Paso 1 Hacer
						
						Si id[i]=idBuscar Entonces
							indBuscar=i
						Fin Si
						
					Fin Para
					
					Escribir "**********************************"
					Escribir "DATOS DEL PRODUCTO"
					Escribir "ID: ",id[indBuscar]
					Escribir "NOMBRE: ",nombre[indBuscar]
					Escribir "CANTIDAD: ",cant[indBuscar]
					Escribir "PRECIO POR UNIDAD: ",p_unitario[indBuscar]
					Escribir "PRECIO TOTAL: ",p_total[indBuscar]
					
				2:
					Escribir "NOMBRE: " Sin Saltar
					leer nombreBuscar
					
					Para i=1 Hasta 20 Con Paso 1 Hacer
						
						Si nombre[i]=nombreBuscar Entonces
							indBuscar=i
						Fin Si
						
					Fin Para
					
					Escribir "**********************************"
					Escribir "DATOS DEL PRODUCTO"
					Escribir "ID: ",id[indBuscar]
					Escribir "NOMBRE: ",nombre[indBuscar]
					Escribir "CANTIDAD: ",cant[indBuscar]
					Escribir "PRECIO POR UNIDAD: ",p_unitario[indBuscar]
					Escribir "PRECIO TOTAL: ",p_total[indBuscar]
					
				De Otro Modo:
					Escribir "Opción inválida"
					Escribir "Vuelva a escoger la opción correcta"
			Fin Segun
		Hasta Que opc=1 o opc=2
		
		Escribir "Escriba -S- si desea continuar o marque"
		Leer bucle3
		Escribir "*****************************************"
	Hasta Que bucle3<>"S"
	
FinSubProceso

SubProceso mostrarInventario(inventario,id,nombre,cant,p_unitario,p_total)
	
	Definir i,j,l,cant_esp_bl,e Como Entero
	Definir esp_bl Como Caracter
	
	
	Escribir "**********************************************"
	Escribir "INVENTARIO DE LOS PRODUCTROS DE LA TIENDA"
	Para i=1 Hasta 21 Con Paso 1 Hacer
		Para j=1 Hasta 5 Con Paso 1 Hacer
			
			Si i=1 Entonces
				Escribir inventario[i,j] Sin Saltar
			Fin Si
			
			Si i>1 y j=1 Entonces
				l=0
				l=Longitud(ConvertirATexto(id[i-1]))
				cant_esp_bl=15-(l+2)
				
				esp_bl=""
				e=0
				Para e=1 Hasta cant_esp_bl Con Paso 1 Hacer
					esp_bl=esp_bl+" "
				Fin Para
				
				Escribir "  ",id[i-1],esp_bl Sin Saltar
			Fin Si
			
			Si i>1 y j=2 Entonces
				l=0
				l=Longitud(nombre[i-1])
				cant_esp_bl=15-(l+2)
				
				esp_bl=""
				e=0
				Para e=1 Hasta cant_esp_bl Con Paso 1 Hacer
					esp_bl=esp_bl+" "
				Fin Para
				
				Escribir "  ",nombre[i-1],esp_bl sin saltar
			Fin Si
			
			Si i>1 y j=3 Entonces
				l=0
				l=Longitud(ConvertirATexto(cant[i-1]))
				cant_esp_bl=15-(l+2)
				
				esp_bl=""
				e=0
				Para e=1 Hasta cant_esp_bl Con Paso 1 Hacer
					esp_bl=esp_bl+" "
				Fin Para
				Escribir  "  ",cant[i-1],esp_bl Sin Saltar
			Fin Si
			
			Si i>1 y j=4 Entonces
				l=0
				l=Longitud(ConvertirATexto(p_unitario[i-1]))
				cant_esp_bl=15-(l+2)
				
				esp_bl=""
				e=0
				Para e=1 Hasta cant_esp_bl Con Paso 1 Hacer
					esp_bl=esp_bl+" "
				Fin Para
				
				Escribir "  ",p_unitario[i-1],esp_bl sin saltar
			Fin Si
			
			Si i>1 y j=5 Entonces
				l=0
				l=Longitud(ConvertirATexto(p_total[i-1]))
				cant_esp_bl=15-(l+2)
				
				esp_bl=""
				e=0
				Para e=1 Hasta cant_esp_bl Con Paso 1 Hacer
					esp_bl=esp_bl+" "
				Fin Para
				
				Escribir "  ",p_total[i-1],esp_bl Sin Saltar
			Fin Si
		Fin Para
		Escribir ""
	Fin Para
	
FinSubProceso








