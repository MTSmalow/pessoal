import java.util.Scanner;
public class principal {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		
		Scanner entrada = new Scanner(System.in) ;
			System.out.println("entre com um numero entre 1 e 4");
			int num = entrada.nextInt();
			switch (num) {
			case 1:
				System.out.println("voce escolheu 1");
				break;
			case 2:
				System.out.println("voce escolheu 2");
				break;
			case 3:
				System.out.println("voce escolheu 3");
				break;
			case 4:
				System.out.println("voce escolheu 4");
				break;
			default:
				System.out.println("numero invalido");
			}
	}

}
