package licao3;

import java.util.Scanner;

public class segundodevarios {

	public static void main(String[] args) {
		// TODO Auto-generated method stub


		Scanner entrada = new Scanner(System.in);
		System.out.print("Digite o valor do lado do quadrdo");
		double r = entrada.nextDouble(); 
		double t = r * 4;
		System.out.println("O valor do perimetro é: " + t);
		
	}

}
