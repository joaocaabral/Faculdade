package Model;

public class Professor extends Pessoa{

    // Atributos
    private double salario;
    private String titulo; // Especialista, Mestre, Doutor, etc

    // M�todo Construtor de Objeto Vazio
    public Professor() {
    }

    // M�todo Construtor de Objeto, inserindo dados
    public Professor(double salario, String titulo) {
        this.salario = salario;
        this.titulo = titulo;
    }

    public Professor(int i, String especialista_em_massagem, int i0, String tiburcio, int i1) {
        throw new UnsupportedOperationException("Not supported yet."); // Generated from nbfs://nbhost/SystemFileSystem/Templates/Classes/Code/GeneratedMethodBody
    }

    // M�todos GET e SET
    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    // M�todo adicional
    public double calcularImposto() {
        return this.salario * 0.11;
    }

}
