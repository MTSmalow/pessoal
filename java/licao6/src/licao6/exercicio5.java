package licao6;
import java.util.Scanner;
public class exercicio5 {

	public static void main(String[] args) {
		  Scanner scanner = new Scanner(System.in);

	        int numero, i = 1, fatorial = 1;

	        System.out.println("Digite um n�mero inteiro:");
	        numero = scanner.nextInt();

	        while (i <= numero) {
	            fatorial *= i;
	            i++;
	        }

	        System.out.println("O fatorial de " + numero + " � igual a: " + fatorial);
	    
	}

}
/* o codigo solicita que o usu�rio digite um n�mero inteiro e, em seguida, calcula o fatorial desse n�mero. 
 * O c�digo utiliza um loop while para calcular 
 * o fatorial. A entrada do usu�rio � tratada usando a classe Scanner.
 */