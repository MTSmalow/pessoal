package licao3;

import java.util.Scanner;

public class quintadevarias {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);
		System.out.print("Digite um valor");
		double r = entrada.nextDouble(); 
		Scanner entrada1 = new Scanner(System.in);
		System.out.print("Digite um valor");
		double e = entrada1.nextDouble(); 
		double t = r+ e;
		if(t>20){
		t += 8;
		System.out.println("O valor é: " + t);
		}
		else if(t <=20)
		{
		t -= 8;
		System.out.println("O valor é: " + t);
		}

	}
}
