package licao5;

import java.util.Random;
import java.util.Scanner;

public class setimo {

	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		System.out.println("digit 1 para apostar no vermelho e 2 para o preto");
		int r = entrada.nextInt(); 
		Random gerador = new Random();
	    int number = gerador.nextInt(36)+1;
	    int resultado= number % 2;
		if(resultado==1 && r==1 ){
			System.out.println("voce ganhou");
		}
		else if(resultado==0 && r==2){
			System.out.println("voce ganhou");
		}
		else{
			System.out.println("voce perdeu");
			
		}
		//o jogo funciona como um cassino onde se pode apostar no vermelho/numero impar ou no preto/numero par
		//o vermelho ganha quando o numero do dado  dividido por 2 e o resultado e igual a 0
		//o preto ganha quando o numero do dado  dividido por 2 e o resultado e igual a 1
	}

}
