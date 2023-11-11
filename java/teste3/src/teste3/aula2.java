package teste3;
import javax.swing.JOptionPane;

public class aula2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub


		String numero;
		float numerodigitado;
		numero = JOptionPane.showInputDialog("entre com um numero real");
		
		numerodigitado = Float.parseFloat(numero);
		JOptionPane.showMessageDialog(null,"o numero real digitado é "+numerodigitado);
	}

}
