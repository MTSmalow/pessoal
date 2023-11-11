package licao2;

public class quinto {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		double C ,F , K ,Re , Ra;
		C = 2.43;
		F = C * 1.8+ 32;
		K = C + 273.15;
		Ra = C * 1.8 + 32 + 459.67 ;
		Re = C * 0.8;
		System.out.println("A temperatura em Fahrenheit é: " + F);
		System.out.println("A temperatura em Kelvin é: " + K);
		System.out.println("A temperatura em Reaumur é: " + Ra);
		System.out.println("A temperatura em Rankine é: " +Re);
	}

}
