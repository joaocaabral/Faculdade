package Principal;

import Model.Aluno;
import Model.Pessoa;
import javax.swing.JOptionPane;

public class Principal {

    public static void main(String[] args) {

        Pessoa objetoPessoa = new Pessoa(1, "Pessoa 1", 20);

        System.out.println("------ Teste 1 Pessoa: ---------");
        System.out.println("ID: " + objetoPessoa.getId());
        System.out.println("Nome: " + objetoPessoa.getNome());
        System.out.println("Idade: " + objetoPessoa.getIdade());

        System.out.println("---------------------- ");

        // fazer aniversário
        objetoPessoa.fazerAniversario();
//
        System.out.println("------ Teste 2 Pessoa: ---------");
        System.out.println("ID: " + objetoPessoa.getId());
        System.out.println("Nome: " + objetoPessoa.getNome());
        System.out.println("Idade: " + objetoPessoa.getIdade());

        System.out.println("---------------------- ");

        // Teste de um dos filhos 
//        Aluno objetoAluno = new Aluno("Sistemas", 7);
//
//        System.out.println("------ Teste 1 Aluno: ---------");
//        System.out.println("ID: " + objetoAluno.getId());
//        System.out.println("Nome: " + objetoAluno.getNome());
//        System.out.println("Idade: " + objetoAluno.getIdade());
//        System.out.println("Curso: " + objetoAluno.getCurso());
//        System.out.println("Fase: " + objetoAluno.getFase());
//
//        if (objetoAluno.verificarFormando() == true) {
//            System.out.println("Formando: SIM ");
//        } else {
//            System.out.println("Formando: NAO ");
//        }
//
//        System.out.println("---------------------- ");
////
//        // Usando método super no construtor do filho
//        Aluno objetoAluno2 = new Aluno("Psicologia", 3, 2, "Maria", 30);
//        System.out.println("------ Teste 2 Aluno: ---------");
//        System.out.println("ID: " + objetoAluno2.getId());
//        System.out.println("Nome: " + objetoAluno2.getNome());
//        System.out.println("Idade: " + objetoAluno2.getIdade());
//        System.out.println("Curso: " + objetoAluno2.getCurso());
//        System.out.println("Fase: " + objetoAluno2.getFase());
//
//        if (objetoAluno2.verificarFormando() == true) {
//            System.out.println("Formando: SIM ");
//        } else {
//            System.out.println("Formando: NAO ");
//        }
//
//        System.out.println("---------------------- ");
//         
//
//        System.out.println("------ Teste OVERLOAD: ---------");
//        // Overload exemplo
//        Aluno objetoAluno3 = new Aluno();
//
//        if (objetoAluno3.verificarFormando(10) == true) {
//            System.out.println("Formando: SIM!");
//        } else {
//            System.out.println("Formando: NAO!");
//        }
//        
//
// 
//        System.out.println("------ Teste OVERRIDE: ---------");
//        // Override exemplo
//        Pessoa objetoPessoa2 = new Pessoa(55, "Pessoa Override", 40);
//        objetoPessoa2.mostraDados();
//
//        System.out.println("----------------");
//        
//        Aluno objetoAluno4 = new Aluno("Massagem", 9, 6543, "Genoveva", 75);
//        objetoAluno4.mostraDados();
//        Professor objetoprofessor = new Professor(100000, "Especialista em massagem", 55, "Tiburcio", 95);
//
//        objetoprofessor.mostraDados();

    }

}
