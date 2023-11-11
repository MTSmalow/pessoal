package licao6;
import java.util.Scanner;
public class exercicio5 {

	public static void main(String[] args) {
		  Scanner scanner = new Scanner(System.in);

	        int numero, i = 1, fatorial = 1;

	        System.out.println("Digite um número inteiro:");
	        numero = scanner.nextInt();

	        while (i <= numero) {
	            fatorial *= i;
	            i++;
	        }

	        System.out.println("O fatorial de " + numero + " é igual a: " + fatorial);
	    
	}

}
/* o codigo solicita que o usuário digite um número inteiro e, em seguida, calcula o fatorial desse número. 
 * O código utiliza um loop while para calcular 
 * o fatorial. A entrada do usuário é tratada usando a classe Scanner.
 */