package licao3;
import java.util.Scanner;
public class sextadevarias {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);
		double a;
		double b;
		double c;
		double d;
		double somal;
		double soma2;
		double soma3;
		double soma4;
		double soma5;
		double soma6;
		double multil;
		double multi2;
		double multi3;
		double multi4;
		double multi5;
		double multi6;
		System.out.println("Digite o primeiro número:"); a = entrada.nextDouble();
		System.out.println("Digite o segundo número:");
		b = entrada.nextDouble();
		System.out.println("Digite o terceiro número:") ;
		c=entrada.nextDouble(); System.out.println("Digite o quarto número:");
		d = entrada.nextDouble();
		somal=a+b;
		soma2=+ c;
		soma3=a+d;
		soma4=b+c;
		soma5=b+d;
		soma6=c+d;
		multil=a*b;
		multi2=a*b;
		multi3 =a*c;
		multi4=b*c;
		multi5=b*d;
		multi6 =c*d;

		System.out.println("As Somas são: "+somal+""+soma2+""+soma3+" "+soma4+" "+soma5 +" "+soma6); System.out.println("As Multiplicações são: "+multil+" "+multi2+" "+multi3+" "+multi4+" "+multi5+" "+multi6+"");
	}

}
