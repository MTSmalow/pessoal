package licao2;
import java.util.Scanner;
public class segunda {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner ler = new Scanner(System.in);
		float n1;
		float n2;
		float media;
		System.out.print("Dgite o primeiro número");
		n1 = ler.nextFloat();
		System.out.print("Dgite o segundo número");
		n2 = ler.nextFloat();
		media= (n1 +n2)/2;
		System.out.println("O valor da média é: " + media);
	}

}
