import javax.swing.*;
public class Variavel_Index{
    public static void main(String args[]){
        int i;
        String nomes[] = new String[3];
        for(i=0; i < 3;i++){
            nomes[i] = JOptionPane.showInputDialog("Digite o nome: ");
        }
    }
}