package licao5;
import java.util.Random;
import java.util.Scanner;
public class segundo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);
		System.out.println("digitar 1 para impar e digitar 2 para par");
		int r = entrada.nextInt(); 
		Random gerador = new Random();
	    int number = gerador.nextInt(10)+1;
	    Random gerador2 = new Random();
	    int number2 = gerador2.nextInt(10)+1;
	    int resultado= number % number2;
		if(resultado==0 && r==2 ){
			System.out.println(resultado);
			System.out.println("voce acertou");
		}
		else if(resultado==1 && r==1){
			System.out.println(resultado);
			System.out.println("voce acertou");
		}
		else{
			System.out.println(resultado);
			System.out.println("voce errou");
			
		}
		
	}

}
