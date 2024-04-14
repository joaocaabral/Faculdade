import javax.swing.JOptionPane;
public class NewClass {
    public static void main(String args[]) {
    double n;
    n = 0;
    double media;
    double soma;
    soma = 0;
    while(n < 1000){
        n++;
        soma = soma + n;
        
    }
    media = soma / 1000;
    JOptionPane.showMessageDialog(null, "O resultado é: " + media);
    }
}

