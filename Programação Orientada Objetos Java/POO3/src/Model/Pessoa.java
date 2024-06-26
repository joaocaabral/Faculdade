package Model;

public abstract class Pessoa {

    // Atributos
    private int id;
    private String nome;
    private int idade;

    // M�todo Construtor de Objeto Vazio
    public Pessoa() {
    }

    // M�todo Construtor de Objeto, inserindo dados
    public Pessoa(int id, String nome, int idade) {
        this.id = id;
        this.nome = nome;
        this.idade = idade;
    }

    // M�todos GET e SET
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public int getIdade() {
        return idade;
    }

    public void setIdade(int idade) {
        this.idade = idade;
    }

    // M�todo adicional    
    public void fazerAniversario() {
        this.idade++;
    }

    public void mostraDados() {
        System.out.println("ID: " + this.id);
        System.out.println("Nome: " + this.nome);
        System.out.println("Idade: " + this.idade);
    }
    
    public static void metodoobrigatorio(){
    }

}
