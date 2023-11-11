package licao4;
import java.util.Scanner;
public class tres {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner entrada = new Scanner(System.in);
		System.out.println("voce vai querer gasolina ou alcool");
		String r = entrada.next(); 
		Double d = null;
		Double v = null;
		if(r.equals("gasolina")){
			 d = 0.04;
			 v = 3.30;
		}
		else if(r.equals("alcool")){
			d = 0.03;
			v = 2.90;
			}
		else{
			System.out.println("valor invalido");
			
		}
		System.out.println("quantos litros voce vai querer");
		Double l = entrada.nextDouble(); 
		if (l>20 && r.equals("gasolina")){
			d=0.06;
		}
		else if (l>20 && r.equals("alcool"))
		{
			d=0.05;
		}
		Double v1 = v*l;
		Double v2 = l*d;
		Double v3 = v1 - v2;
		System.out.println("o valor a se pago sera" +v3);
		
	}

}
