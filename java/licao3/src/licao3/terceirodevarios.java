package licao3;

import java.util.Scanner;

public class terceirodevarios {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);
		System.out.println("Digite um nome");
		String r = entrada.next(); 
		String t = "malow";
		if(r.equals(t))
		{
			System.out.println("nome correto");
		}
		else
		{
			System.out.println("nome incorreto");
		}		
	}
}
