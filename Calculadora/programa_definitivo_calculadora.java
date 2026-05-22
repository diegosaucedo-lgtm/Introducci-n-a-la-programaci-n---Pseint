/* Este codigo ha sido generado por el modulo psexport 20180802-w32 de PSeInt.
Es posible que el codigo generado no sea completamente correcto. Si encuentra
errores por favor reportelos en el foro (http://pseint.sourceforge.net). */

// En java, el nombre de un archivo fuente debe coincidir con el nombre de la clase que contiene,
// por lo que este archivo debería llamarse "PROGRAMA_DEFINITIVO_CALCULADORA.java."

// Hay dos errores que se pueden generar al exportar un algoritmo con subprocesos desde PSeint a Java:
// 1) En java no se puede elegir entre pasaje por copia o por referencia. Técnicamente solo existe el
// pasaje por copia, pero los identificadores de objetos representan en realidad referencias a los
// objetos. Entonces, el pasaje para tipos nativos actúa como si fuera por copia, mientras que el
// pasaje para objetos (como por ejemplo String) actúa como si fuera por referencia. Esto puede llevar
// a que el algoritmo exportado no se comporte de la misma forma que el algoritmo original, en cuyo
// caso deberán modificarse algunos métodos (subprocesos exportados) para corregir el problema.
// 2) Las funciones que hacen lectura por teclado deben lazar una excepción. Si una función A es
// invocada por otra B, B también debe manejar (lanzar en este caso) las execpciones que lance A.
// Esto no se cumple en el código generado automáticamante: las funciones que realizan lecturas
// directamente incluyen el código que indica que pueden generar dicha excepción, pero las que
// lo hacen indirectamente (invocando a otras que sí lo hacen), puede que no, y deberán ser
// corregidas manualmente.

import java.io.*;

public class programa_definitivo_calculadora {

	public static void main(String args[]) {
		System.out.println("-------CALCULADORA------------");
		System.out.println("------------------------------");
		System.out.println("");
		teclascalculadora();
		System.out.println("");
		leer_escribir_botones();
	}

	public static void teclascalculadora() {
		int i;
		int j;
		String teclas[][];
		teclas = new String[4][4];
		teclas[0][0] = " 1 ";
		teclas[0][1] = " 2 ";
		teclas[0][2] = " 3 ";
		teclas[0][3] = " + ";
		teclas[1][0] = " 4 ";
		teclas[1][1] = " 5 ";
		teclas[1][2] = " 6 ";
		teclas[1][3] = " - ";
		teclas[2][0] = " 7 ";
		teclas[2][1] = " 8 ";
		teclas[2][2] = " 9 ";
		teclas[2][3] = " x ";
		teclas[3][0] = " . ";
		teclas[3][1] = " 0 ";
		teclas[3][2] = " = ";
		teclas[3][3] = " / ";
		for (i=1;i<=4;i++) {
			for (j=1;j<=4;j++) {
				System.out.print(teclas[i-1][j-1]);
			}
			System.out.println("");
		}
	}

	public static void leer_escribir_botones() throws IOException {
		BufferedReader bufEntrada = new BufferedReader(new InputStreamReader(System.in));
		String acum;
		String boton;
		boton = bufEntrada.readLine();
		acum = "";
		while (!boton.equals("=")) {
			switch (boton) {
			case "1":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case "2":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case "3":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case "4":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case "5":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case "6":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case "7":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case "8":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case "9":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case "0":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case "+":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case "-":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case "*":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case "/":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			case ".":
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				acum = acum+boton;
				System.out.println("");
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
				break;
			default:
				System.out.println(""); // no hay forma directa de borrar la consola en Java
				System.out.println(acum);
				System.out.println("");
				TECLASCALCULADORA();
				boton = bufEntrada.readLine();
			}
		}
		System.out.println("");
		calcular_operaciones(acum,boton);
	}

	public static void calcular_operaciones(String acum, String boton) {
		double cal1;
		int cont_operadores;
		int cont_operandos;
		int cont_pos;
		int i;
		int j;
		double longitud{acum};
		String operadores[];
		double operandos[];
		int posicion_operadores[];
		operandos = new double[100];
		operadores = new String[100];
		posicion_operadores = new int[100];
		if (boton.equals("=")) {
			cont_operadores = 0;
			cont_operandos = 0;
			cont_pos = 0;
			for (i=1;i<=acum.length();i++) {
				if (acum.substring(i-1,i).equals("+") || acum.substring(i-1,i).equals("-") || acum.substring(i-1,i).equals("*") || acum.substring(i-1,i).equals("/")) {
					cont_operadores = cont_operadores+1;
					operadores[cont_operadores-1] = acum.substring(i-1,i);
					cont_pos = cont_pos+1;
					posicion_operadores[cont_pos-1] = i;
					cont_operandos = cont_operandos+1;
					if (cont_operandos==1) {
						operandos[cont_operandos-1] = String.valueOf(acum.substring(0,i-1));
					} else {
						operandos[cont_operandos-1] = String.valueOf(acum.substring(posicion_operadores[cont_pos-2],i-1));
					}
				}
			}
			operandos[cont_operandos] = String.valueOf(acum.substring(posicion_operadores[cont_pos-1],acum.length()));
			cal1 = 0;
			for (j=1;j<=cont_operadores;j++) {
				if (j==1) {
					switch (operadores[j-1]) {
					case "+":
						cal1 = operandos[j-1]+operandos[j];
						break;
					case "-":
						cal1 = operandos[j-1]-operandos[j];
						break;
					case "*":
						cal1 = operandos[j-1]*operandos[j];
						break;
					case "/":
						cal1 = operandos[j-1]/operandos[j];
						break;
					default:
					}
				} else {
					switch (operadores[j-1]) {
					case "+":
						cal1 = cal1+operandos[j];
						break;
					case "-":
						cal1 = cal1-operandos[j];
						break;
					case "*":
						cal1 = cal1*operandos[j];
						break;
					case "/":
						cal1 = cal1/operandos[j];
						break;
					default:
					}
				}
			}
		}
		System.out.println(""); // no hay forma directa de borrar la consola en Java
		System.out.println(acum+" = "+cal1);
	}


}

