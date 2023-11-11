import java.util.Scanner;

public class bomprato {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		System.out.println("qual o peso do prato: ");
		Scanner scanner = new Scanner(System.in);
		double peso = scanner.nextDouble();
		
		double valor_final = peso * 54;
		System.out.println("prço de " + valor_final + " reais");
		
	}

}
