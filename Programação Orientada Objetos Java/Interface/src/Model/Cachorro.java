
package Model;

import javax.swing.JOptionPane;

public class Cachorro implements Animal {
    private double tamanho;
    private int tipoPelo;
    private int porte;

    public Cachorro() {
    }

    public Cachorro(double tamanho, int tipoPelo, int porte) {
        this.tamanho = tamanho;
        this.tipoPelo = tipoPelo;
        this.porte = porte;
    }

    public double getTamanho() {
        return tamanho;
    }

    public void setTamanho(double tamanho) {
        this.tamanho = tamanho;
    }

    public int getTipoPelo() {
        return tipoPelo;
    }

    public void setTipoPelo(int tipoPelo) {
        this.tipoPelo = tipoPelo;
    }

    public int getPorte() {
        return porte;
    }

    public void setPorte(int porte) {
        this.porte = porte;
    }

    @Override
    public double calculoIMC(double peso, double imc) {
        peso = Double.parseDouble(JOptionPane.showInputDialog("Insira o peso: "));
        tamanho = Double.parseDouble(JOptionPane.showInputDialog("Insira o tamanho: "));
        imc = peso * tamanho/3;
        return imc;
    }    
}
