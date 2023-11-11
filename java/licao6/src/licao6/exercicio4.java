package licao6;
import java.util.Scanner;
public class exercicio4 {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

        int fib, atual = 1, ant = 0, aux;

        System.out.println("Digite o termo Fibonacci:");
        fib = scanner.nextInt();

        if (fib < 2) {
            System.out.println("O termo Fibonacci correspondente �: 1");
        } else {
            for (int i = 2; i <= fib; i++) {
                fib = atual + ant;
                aux = atual;
                atual = fib;
                ant = aux;
            }
            System.out.println("O termo Fibonacci correspondente �: " + fib);
        }
	}

}
/* o codigo solicita que o usu�rio digite o n�mero do termo na sequ�ncia de Fibonacci e, em seguida, mostra o n�mero correspondente.
O c�digo usa a mesma l�gica, com um loop para calcular os termos da sequ�ncia. A entrada do usu�rio � tratada usando a classe Scanner.*/