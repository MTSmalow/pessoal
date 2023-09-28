import java.util.Scanner;

public class leia_2_numeros {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		System.out.println("primeiro valor: ");
		Scanner scanner1 = new Scanner(System.in);
		int valor1 = scanner1.nextInt();
		System.out.println("segundo valor: ");
		Scanner scanner2 = new Scanner(System.in);
		int valor2 = scanner2.nextInt();
		
		if (valor1 == valor2 ) {
			System.out.println("É igual");
		}
		else {
			System.out.println("Não é igual");		
		}		
	}
}
