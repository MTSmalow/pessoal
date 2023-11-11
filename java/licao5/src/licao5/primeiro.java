package licao5;
import java.util.Random;
import java.util.Scanner;
public class primeiro {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);
		System.out.println("digitar 1 para Cara e digitar 2 para coroa");
		int r = entrada.nextInt(); 
		Random gerador = new Random();
	    int number = gerador.nextInt(2)+1;
		if(number==r){
			System.out.println("voce acertou");
		}
		else{
			System.out.println("voce errou");
		}
       
        }
    }
