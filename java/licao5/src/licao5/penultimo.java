package licao5;
import java.util.Random;
public class penultimo {
	public static void main(String[] args) {
 
		Random gerador = new Random();
	    int number = gerador.nextInt(6)+1;
	    System.out.println("dado 1: "+number);
	    Random gerador2 = new Random();
	    int number2 = gerador2.nextInt(6)+1;
	    System.out.println("dado 2: "+ number2);
	    int resultado= number + number2;
	    System.out.println("resultado da soma "+resultado);
		if(resultado==7 | resultado==11){
			System.out.println("voce ganhou");
		}
		else{
			System.out.println("voce perdeu");
			
		}
	}

}
