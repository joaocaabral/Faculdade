
package javaapplication1;

import javax.swing.JOptionPane;

public class JavaApplication1 {
    public static void main(String[] args) {
       String controle;
       controle = JOptionPane.showInputDialog ("Você concorda com os termos apresentados ? (s/n)");              
       char controleCHAR = controle.charAt(0);
       switch(controleCHAR){
           case 's':
           JOptionPane.showMessageDialog(null,"SIM, você concorda !");
           break;
           
           case 'n':
           JOptionPane.showMessageDialog(null ,"NÃO, você não concorda !");
           break;
           
           //default:
           //JOptionPane.showMessageDialog(null ,"Opção inválida!");
           //break;
       }
    }
    
}
