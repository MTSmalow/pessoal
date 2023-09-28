package licao3;

import java.util.Scanner;

public class setimodevarios {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);
		System.out.print("Digite um valor");
		double n = entrada.nextDouble(); 
		if(n>0){
		System.out.println("O valor é positivo: ");
		}
		else if(n<0)
		{
		System.out.println("O valor é negativo ");
		}
		else if(n==0)
		{
		System.out.println("O numero e zero");
	
		}
	}
}
