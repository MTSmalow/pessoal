import java.util.Scanner;

public class divisivel {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println("primeiro valor: ");
		Scanner scanner1 = new Scanner(System.in);
		int valor1 = scanner1.nextInt();
		System.out.println("segundo valor: ");
		Scanner scanner2 = new Scanner(System.in);
		int valor2 = scanner2.nextInt();
		
		if (valor1 % valor2 == 0) {
			System.out.println("� divis�vel");
		}
		else {
			System.out.println("N�o � divis�vel");
		}
	}

}
