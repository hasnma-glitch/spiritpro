package exerciciou1s2;
import java.util.Scanner;
public class Atividade {
		  public static void main(String[] args) {
		    float base, altura, area; //vari�veis
		    //objeto do tipo Scanner
		    Scanner entrada = new Scanner(System.in);
		    System.out.print("Informe a base do triangulo: ");
		    base = entrada.nextFloat();
		    System.out.print("Informe a altura do triangulo: ");
		    altura = entrada.nextFloat();
		    area = (base * altura) / 2;
		    System.out.printf("Area do triangulo � %.1f ",area);
		  }
}
