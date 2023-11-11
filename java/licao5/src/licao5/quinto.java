package licao5;
import java.util.Random;
import java.util.Scanner;

public class quinto {
	public static void main(String[] args) {
		Scanner entrada = new Scanner(System.in);
		System.out.println("digite um numero de 1 a 2");
		int r = entrada.nextInt(); 
		Random gerador = new Random();
	    int number = gerador.nextInt(2)+1;
	    Random gerador2 = new Random();
	    int number2 = gerador2.nextInt(2)+1;
		if(number==number2 && r==number ){
			System.out.println("voce empatou");
		}
		else if(r!=number && r!=number2){
			System.out.println("voce ganhou");
		}
		else if(r==number | r==number2){
			System.out.println("voce perdeu");
			
		}
	}
		 
}
