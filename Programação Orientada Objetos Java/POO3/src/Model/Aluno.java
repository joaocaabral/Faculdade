package Model;

public class Aluno extends Pessoa {

    // Atributos
    private String curso;
    private int fase;

    // Método Construtor de Objeto Vazio
    public Aluno() {
    }

    // Método Construtor de Objeto, inserindo dados
    public Aluno(String curso, int fase) {
        this.curso = curso;
        this.fase = fase;
    }

    // Método Construtor usando também o construtor da SUPERCLASSE
    public Aluno(String curso, int fase, int id, String nome, int idade) {
        super(id, nome, idade);
        this.curso = curso;
        this.fase = fase;
    }
    
    

    // Métodos GET e SET
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

    // Método adicional
    public boolean verificarFormando() {

        if (this.fase == 10) {
            return true;
        } else {
            return false;
        }
    }

    
    // Exemplo de overload
    public boolean verificarFormando(int fase) {

        if (fase == 10) {
            return true;
        } else {
            return false;
        }
    }

    
    // Exemplo de Override
    @Override
    public void mostraDados() {
        super.mostraDados(); 
        System.out.println("Curso: " + this.curso);
        System.out.println("Fase: " + this.fase);
    }
    
    

}
