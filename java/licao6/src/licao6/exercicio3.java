package licao6;
import java.util.Scanner;
public class exercicio3 {

	public static void main(String[] args) {
		 Scanner scanner = new Scanner(System.in);

	        int somatorio = 0;
	        int numero;

	        System.out.println("Programa m�dia de 10 n�meros\n");

	        for (int i = 1; i <= 10; i++) {
	            System.out.println("Digite um n�mero inteiro:");
	            numero = scanner.nextInt();
	            somatorio += numero;
	        }

	        double media = (double) somatorio / 10;

	        System.out.println("O valor da m�dia dos n�meros �: " + media);
	}

}
/*o codigo calcula a m�dia de 10 n�meros digitados pelo usu�rio. Note que foi necess�rio usar a classe Scanner para a entrada de dados a partir 
 * do teclado. Al�m disso, a vari�vel media foi definida como um tipo double para garantir que o resultado da divis�o seja armazenado com precis�o
 * decimal.
 */