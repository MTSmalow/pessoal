package licao4;
import java.util.Scanner;
public class quinta {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);
		System.out.println("qual o nome do produto");
		String r = entrada.next(); 
		System.out.println("qual o valor do produto");
		Double v = entrada.nextDouble(); 
		System.out.println("qual a quantidade do produto");
		Double q = entrada.nextDouble(); 
		Double vt =v*q;
		System.out.println("o valor sem disconto é "+ vt);
		Double d;
		Double vp;
		if(q<=5){
			d= vt/100*2;
			vp= vt-d;
			System.out.println("o valor com disconto é "+ vp);
		}
		else if(q>5 && q<=10){
			d= vt/100*3;
			vp = vt-d;
			System.out.println("o valor com disconto é "+ d);
		}
		else{
			d= vt/100*5;
			vp = vt-d;
			System.out.println("o valor com disconto é "+ (d-vt) );
		}
	}

}
