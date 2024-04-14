import javax.swing.*;
public class MatrizBolha {
    public static void main(String args[]){
        double A[][] = new double[3][4];
        int i, j;
            for(i=0; i<3; i++){
                for(j=0; j<4; j++){
                A[i][j]=Double.parseDouble(JOptionPane.showInputDialog("Digite o valor da linha "+i+" e coluna "+j+": "));
                }
            }
            for(i=0;i<3;i++){
                for(j=0;j<4;j++){
                    JOptionPane.showMessageDialog(null, "O valor contido na linha "+i+" e coluna "+j+" eh " +A[i][j]);
                }
            }
    
    } 
}
