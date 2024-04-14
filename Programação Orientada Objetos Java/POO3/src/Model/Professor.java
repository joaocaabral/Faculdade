package Model;

public class Professor extends Pessoa{

    // Atributos
    private double salario;
    private String titulo; // Especialista, Mestre, Doutor, etc

    // Método Construtor de Objeto Vazio
    public Professor() {
    }

    // Método Construtor de Objeto, inserindo dados
    public Professor(double salario, String titulo) {
        this.salario = salario;
        this.titulo = titulo;
    }

    // Métodos GET e SET
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

    // Método adicional
    public double calcularImposto() {
        return this.salario * 0.11;
    }

}
