import java.util.Scanner;

public class menornumero {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		

		System.out.println("primeiro valor: ");
		Scanner scanner1 = new Scanner(System.in);
		int valor1 = scanner1.nextInt();
		System.out.println("segundo valor: ");
		Scanner scanner2 = new Scanner(System.in);
		int valor2 = scanner2.nextInt();
		System.out.println("terceiro valor: ");
		Scanner scanner3 = new Scanner(System.in);
		int valor3 = scanner2.nextInt();
		
		int menor;
		
		if (valor1 < valor2 & valor1 < valor3) {
			menor = valor1;
		}
		else if (valor2 < valor1 & valor2 < valor3){
			menor = valor2;
		}
		else{
			menor = valor3;
		}
		System.out.println("o menor valor e = " + menor );
	}
	}
