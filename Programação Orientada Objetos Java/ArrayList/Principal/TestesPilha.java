package Principal;

import Model.Aluno;
import java.util.*;

public class TestesPilha {

    public static void main(String[] args) {

        Stack<Aluno> pilha = new Stack<Aluno>();   
        
        pilha.push(new Aluno("Sistemas", 7, 1111, "Tiburcio", 95));
        pilha.push(new Aluno("Massagem", 2, 2222, "Marilene", 21));
        pilha.push(new Aluno("Culinaria", 4, 3333, "Rita Lobo", 46));
        pilha.push(new Aluno("Culinaria", 8, 4444, "Claude Troisgros", 64));

        System.out.println("Topo:" + pilha.peek().getId() + " - " + pilha.peek().getNome());

        // Interator utilizado para correr a pilha, veja mais na documentação JAVA
        for (Iterator it = pilha.iterator(); it.hasNext();) {
            Aluno c = (Aluno) it.next();
            System.out.println(c.getId() + " - " + c.getNome());
        }

        System.out.println("Removendo:" + pilha.peek().getNome());
        pilha.pop();

        System.out.println("Topo:" + pilha.peek().getNome());
    }
}
