import java.util.Scanner;

public class maior_numero {

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
		
		int maior;
		
		if (valor1 > valor2 & valor1 > valor3) {
			maior = valor1;
		}
		else if (valor2 > valor1 & valor2 > valor3){
			maior = valor2;
		}
		else{
			maior = valor3;
		}
		System.out.println("o maior valor e = " + maior );
	}
	}

