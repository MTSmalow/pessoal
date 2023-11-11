package licao6;
import java.util.Scanner;
public class exercicio4 {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);

        int fib, atual = 1, ant = 0, aux;

        System.out.println("Digite o termo Fibonacci:");
        fib = scanner.nextInt();

        if (fib < 2) {
            System.out.println("O termo Fibonacci correspondente é: 1");
        } else {
            for (int i = 2; i <= fib; i++) {
                fib = atual + ant;
                aux = atual;
                atual = fib;
                ant = aux;
            }
            System.out.println("O termo Fibonacci correspondente é: " + fib);
        }
	}

}
/* o codigo solicita que o usuário digite o número do termo na sequência de Fibonacci e, em seguida, mostra o número correspondente.
O código usa a mesma lógica, com um loop para calcular os termos da sequência. A entrada do usuário é tratada usando a classe Scanner.*/