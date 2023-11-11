package licao6;
import java.util.Scanner;
public class exercicio3 {

	public static void main(String[] args) {
		 Scanner scanner = new Scanner(System.in);

	        int somatorio = 0;
	        int numero;

	        System.out.println("Programa média de 10 números\n");

	        for (int i = 1; i <= 10; i++) {
	            System.out.println("Digite um número inteiro:");
	            numero = scanner.nextInt();
	            somatorio += numero;
	        }

	        double media = (double) somatorio / 10;

	        System.out.println("O valor da média dos números é: " + media);
	}

}
/*o codigo calcula a média de 10 números digitados pelo usuário. Note que foi necessário usar a classe Scanner para a entrada de dados a partir 
 * do teclado. Além disso, a variável media foi definida como um tipo double para garantir que o resultado da divisão seja armazenado com precisão
 * decimal.
 */