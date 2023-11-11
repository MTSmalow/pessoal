package licao2;
import java.util.Scanner;
public class quarto {

	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		System.out.print("Digite o valor do raio: \n");
		double r = entrada.nextDouble(); 
		double area = 3.1415 * (r*r);
		System.out.println("O valor da área é: " + area);
		
	}

}
