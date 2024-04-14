package Principal;

public class Exercicio1 {

     public static void main(String[] args) {

           Double res;
           Double cotacao;
           Double dolares;
           cotacao = Double.parseDouble(
                     JOptionPane.showInputDialog("Coloque a cotação do Dólar de hoje: ")
           );
           dolares = Double.parseDouble(
                     JOptionPane.showInputDialog("Coloque a quantidade de dolares: ")
           );
         
           res = dolares * cotacao;
           
           JOptionPane.showMessageDialog(null, "Cotação em Reais R$ " + res);
      }
}