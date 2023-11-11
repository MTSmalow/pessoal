package licao4;

import java.util.Scanner;

public class dois {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		Scanner entrada = new Scanner(System.in);
		System.out.print("Digite a idade do homen");
		Double r = entrada.nextDouble(); 
		System.out.println("Digite a idade do homen");
		Double r2 = entrada.nextDouble(); 
		System.out.print("Digite a idade do mulher");
		Double t = entrada.nextDouble(); 
		System.out.println("Digite a idade do mulher");
		Double t2 = entrada.nextDouble(); 
		Double maiorh;
		Double maiorm;
		Double menorh;
		Double menorm;
		if(r>r2){
			 maiorh = r;
			 menorh = r2;
		}
		else{
			 maiorh = r2;
			 menorh = r;
			}
		if(t>t2){
			 maiorm = t;
			 menorm = t2;
		}
		else{
			 maiorm = t2;
			 menorm = t;
			}
		Double hvmn = maiorh + menorm ;
		Double hnmv = maiorm + menorh ;
		System.out.println("a soma da idade da mulher mais velha e o homem mais novo:"+hnmv);
		System.out.println("a soma da idade da mulher mais nova e o homem mais velho:"+hvmn);
		}

}
