package licao4;

import java.util.Scanner;

public class quatro {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Scanner entrada = new Scanner(System.in);
		System.out.println("digite 1 para morango , 2 para maçã ou 3 para os dois");
		Double r = entrada.nextDouble();  
		String d = null; Double vm = null; Double vc = null; Double km = 0.0; Double kc = 0.0;
		if(r==1) {
			System.out.println("voce vai querer quantos quilos morango");
			km = entrada.nextDouble(); 
		}
		else if (r==2){
			System.out.println("voce vai querer quantos quilos maçã");
			kc = entrada.nextDouble(); 
		}
		else if (r==3){
			System.out.println("voce vai querer quantos quilos morango");
			km = entrada.nextDouble(); 
			System.out.println("voce vai querer quantos quilos maçã");
			kc = entrada.nextDouble(); 
		}
		
		if(km<5 ){
			 vm= 2.50;
		}
		else if(km>5){
			vm = 2.20;
			}

		if(kc<5){
			 vc= 1.80;
		}
		else if(kc>5){
			vc = 1.50;
			}
		else {}
		Double kt= kc+km; Double vp = null; Double soma1 = null; Double soma = null; Double d2 = null;
		
		if(r==1) {
			vp = km*vm;
		}
		else if (r==2){
			vp = kc*vc;
		}
		else if (r==3){
			soma =  km *vm ;
			soma1 =  kc * vc ;
			vp = soma+soma1;
		}
		if(kt>8 || vp>25 )
		{
			d2=vp/100*10;
			vp = vp-d2;
		}
		System.out.println("voce pagara "+vp);
	}
}