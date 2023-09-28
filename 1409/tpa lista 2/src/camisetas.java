import java.util.Scanner;

public class camisetas {

	public static void main(String[] args) {
		System.out.println("Quantidade de camisetas pequenas: ");
		Scanner scanner1 = new Scanner(System.in);
		int pequenas = scanner1.nextInt();
		System.out.println("Quantidade de camisetas médias: ");
		Scanner scanner2 = new Scanner(System.in);
		int medias = scanner2.nextInt();
		System.out.println("Quantidade de camisetas grandes: ");
		Scanner scanner3 = new Scanner(System.in);
		int grandes = scanner3.nextInt();
		
		int preco_final = pequenas * 8 + medias * 10 + grandes * 15;
		
		System.out.println("O valor total arrecado é " + preco_final);
		

	}

}
