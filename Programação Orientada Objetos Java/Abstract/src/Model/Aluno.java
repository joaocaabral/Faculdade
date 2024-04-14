package Model;

import javax.swing.JOptionPane;

public class Aluno extends Pessoa{
    private String curso;
    private int fase;
    

    public Aluno() {
    }

    public Aluno(String curso, int fase) {
        this.curso = curso;
        this.fase = fase;
    }
    
    public Aluno(String curso, int fase, int id, String nome, int idade) {
        super(id, nome, idade);
        this.curso = curso;
        this.fase = fase;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public int getFase() {
        return fase;
    }

    public void setFase(int fase) {
        this.fase = fase;
    }
    
    @Override
    public double calculoImposto() {    
        Double mensalidade = Double.parseDouble(JOptionPane.showInputDialog("Insira a mensalidade: "));
        double taxa = 0.11;
        double imposto = mensalidade * taxa;
        return imposto;
    }
    
    public String mostrarUniversidade(){      
        return "A sua universidade é: " + faculdade;
    }   
    
}
