
package Principal;
import Model.*;
import javax.swing.JOptionPane;

public class Principal {
    public static void main(String[] args){
        Ave objAve = new Ave();
        Cachorro objDog = new Cachorro();
        JOptionPane.showMessageDialog(null, objAve.calculoIMC(0, 0));
        JOptionPane.showMessageDialog(null, objDog.calculoIMC(0, 0));
        
    }
    
}
