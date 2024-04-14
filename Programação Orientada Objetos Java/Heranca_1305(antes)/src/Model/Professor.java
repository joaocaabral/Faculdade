
package Model;

public class Professor extends Pessoa{
    //Atributos
    private double salario;
    private String titulo;
    
    //Métodos
    public Professor(){
    }

    public Professor(double salario, String titulo) {
        this.salario = salario;
        this.titulo = titulo;
    }

    public Professor(double salario, String titulo, int id, String nome, int idade) {
        super(id, nome, idade);
        this.salario = salario;
        this.titulo = titulo;
    }

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
    
    @Override
    public void mostraDados() {
        super.mostraDados();
        System.out.println("Salário: " + this.salario);
        System.out.println("Titulo: " + this.titulo);
    }
    
    //Overload
    public double calcularImposto(){
        double bruto = 0;       
        double desconto = 0;
        salario = bruto - desconto;
        return salario;       
    }
    
    public double calcularImposto(double bruto, double desconto){
        salario = bruto - desconto;
        return salario;    
    }
    
    
}
