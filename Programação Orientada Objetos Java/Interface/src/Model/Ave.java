
package Model;

import javax.swing.JOptionPane;

public class Ave implements Animal {
    private double envergadura;
    private String tipoPena;
    private String habitat;

    public Ave() {
    }

    public Ave(double envergadura, String tipoPena, String habitat) {
        this.envergadura = envergadura;
        this.tipoPena = tipoPena;
        this.habitat = habitat;
    }

    public double getEnvergadura() {
        return envergadura;
    }

    public void setEnvergadura(double envergadura) {
        this.envergadura = envergadura;
    }

    public String getTipoPena() {
        return tipoPena;
    }

    public void setTipoPena(String tipoPena) {
        this.tipoPena = tipoPena;
    }

    public String getHabitat() {
        return habitat;
    }

    public void setHabitat(String habitat) {
        this.habitat = habitat;
    }
    

    @Override
    public double calculoIMC(double peso, double imc) {
        peso = Double.parseDouble(JOptionPane.showInputDialog("Insira o peso: "));
        envergadura = Double.parseDouble(JOptionPane.showInputDialog("Insira a envergadura: "));
        imc = peso * envergadura / 2;
        return imc;
    }
    
}
