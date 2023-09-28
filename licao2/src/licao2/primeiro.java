package licao2;
import java.util.Scanner;
public class primeiro {
		public static void main(String[] args) { // TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);
		String nome;
		int idade;		
		float salario;
		System.out.println("Digite seu nome");	
		nome = entrada.nextLine();
		System.out.println("Digite sua idade"); 
		idade = entrada.nextInt();
		System.out.println("Digite seu salario");
		salario = entrada.nextFloat();
		System.out.printf("Seu nome é " + nome + "\n");
		System.out.printf("Sua idade é" + idade + "\n");
		System.out.printf("Seu salário é" + salario + "\n");
	}

}
