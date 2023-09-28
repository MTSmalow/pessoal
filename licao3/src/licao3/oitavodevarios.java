package licao3;

import java.util.Scanner;

public class oitavodevarios {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);
		System.out.println("Digite um valor");
		double n = entrada.nextDouble(); 
		Scanner entrada2 = new Scanner(System.in);
		System.out.println("Digite um valor");
		double b = entrada2.nextDouble(); 
		Scanner entrada3 = new Scanner(System.in);
		System.out.println("Digite um valor");
		double m = entrada3.nextDouble(); 
		if(n==m && m==b)
		{
			System.out.println("o triangulo é equilátero");
			}
		else if(n==m || m==b || b==n)
		{
			System.out.println("o triangulo é isósceles ");
			}
		else
		{
		System.out.println("o triangulo é escaleno");
		}
	}

}
