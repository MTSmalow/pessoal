import java.util.Scanner;

public class _1_operacoes {

	public static void main(String[] args) {
		System.out.println("Digite o primeiro n�mero: ");
		Scanner scanner = new Scanner(System.in);
		int numero1 = scanner.nextInt();
		System.out.println("Digite o segundo n�mero: ");
		Scanner scanner2 = new Scanner(System.in);
		int numero2 = scanner.nextInt();
		
		System.out.println(numero1 + numero2);
		System.out.println(numero1 - numero2);
		System.out.println(numero1 * numero2);
		System.out.println(numero1 / numero2);

	}

}
