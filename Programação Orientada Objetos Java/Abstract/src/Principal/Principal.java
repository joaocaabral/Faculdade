
package Principal;

import Model.*;
import javax.swing.JOptionPane;

public class Principal {
    public static void main(String[] args){
        Aluno obj = new Aluno();
        JOptionPane.showMessageDialog(null, obj.calculoImposto());
        JOptionPane.showMessageDialog(null, obj.mostrarUniversidade());
    }
    
    
}
