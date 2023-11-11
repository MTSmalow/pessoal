import java.util.Scanner;

public class pizza_e_esfiha {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		System.out.println("valor da pizza: ");
		Scanner scanner1 = new Scanner(System.in);
		int pizza = scanner1.nextInt();
		System.out.println("esfiha: ");
		Scanner scanner2 = new Scanner(System.in);
		int esfiha = scanner2.nextInt();
		int troca;
		troca = pizza;
		pizza = esfiha;
		esfiha = troca;
		System.out.println("O valor depois da troca,pizza = " + pizza + " e esfiha = " + esfiha);
				
		
	
		
	}

}
