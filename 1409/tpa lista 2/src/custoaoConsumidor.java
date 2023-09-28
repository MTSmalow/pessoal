import java.util.Scanner;

public class custoaoConsumidor {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

			System.out.println("custo de fabrica: ");
			Scanner scanner = new Scanner(System.in);
			int valor_fabrica = scanner.nextInt();
			double valorfinal = valor_fabrica + (valor_fabrica * 0.25) + (valor_fabrica*0.45);
			System.out.println(valorfinal);
	}

}
