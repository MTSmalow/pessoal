package licao4;
import java.util.Scanner;
public class um {

	public static void main(String[] args) {
		// TODO Auto-generated method stub


		Scanner entrada = new Scanner(System.in);
		System.out.print("Digite o nome do time");
		String r = entrada.next(); 
		System.out.println("quantos gol o time "+ r +" fez?");
		Double rgols = entrada.nextDouble(); 
		System.out.print("Digite o nome do time");
		String t = entrada.next(); 
		System.out.println("quantos gol o time "+ t +" fez?");
		Double tgols = entrada.nextDouble(); 
		if (rgols > tgols )
		{
			System.out.println("o vencedor é o "+ r);
			}
		else if ( tgols>rgols )
		{
			System.out.println("o vencedor é o "+ t);
		}
		else{
			System.out.println("os time "+ t +" e " +r+" empataram");
		}
	}

}
