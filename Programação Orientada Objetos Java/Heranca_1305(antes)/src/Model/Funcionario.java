
package Model;

public class Funcionario extends Pessoa {
    //Atributos
    private String funcao;
    private double salario;
    private int tempo;
    
    //Metodos
    public Funcionario(){
    }

    public Funcionario(String funcao, double salario, int tempo) {
        this.funcao = funcao;
        this.salario = salario;
        this.tempo = tempo;
    }

    public Funcionario(String funcao, double salario, int id, String nome, int idade, int tempo) {
        super(id, nome, idade);
        this.funcao = funcao;
        this.salario = salario;
        this.tempo = tempo;
    }

    public String getFuncao() {
        return funcao;
    }

    public void setFuncao(String funcao) {
        this.funcao = funcao;
    }

    public double getSalario() {
        return salario;
    }

    public void setSalario(double salario) {
        this.salario = salario;
    }

    public int getTempo() {
        return tempo;
    }

    public void setTempo(int tempo) {
        this.tempo = tempo;
    }
    

    @Override
    public void mostraDados() {
        super.mostraDados();
        System.out.println("Função: " + this.funcao);
        System.out.println("Salário: " + this.salario);
    }
    
    //Overload
    public int mostraTempo(){
        int anoInicial = 0;
        int anoAtual = 0;
        tempo = anoInicial - anoAtual;
        return tempo;       
    }
    
    public int mostraTempo(int anoInicial, int anoAtual){
        tempo = anoInicial - anoAtual;
        return tempo;
    }
    
    
}
