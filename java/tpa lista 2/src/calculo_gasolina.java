import java.util.Scanner;

class calculo_gasolina {
	public static void main(String[] args) {
		
		System.out.println("Valor gasolina: ");
		Scanner scanner = new Scanner(System.in);
		double valor_gasolina = scanner.nextDouble();
		System.out.println("Valor pago: ");
		Scanner scanner2 = new Scanner(System.in);
		double valor_pago = scanner2.nextDouble();
		
		double litros_colocados = valor_pago / valor_gasolina;
		System.out.println("Foram colocados " + litros_colocados + " litros.");
		
		
	}
}
