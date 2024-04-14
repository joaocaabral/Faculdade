package Principal;

import Model.Aluno;
import java.util.*;

public class TesteFila {

    public static void main(String[] args) {

        Queue<Aluno> fila = new LinkedList();
        fila.offer(new Aluno("Sistemas", 7, 1111, "Tiburcio", 95));
        fila.offer(new Aluno("Massagem", 2, 2222, "Marilene", 21));
        fila.offer(new Aluno("Culinaria", 4, 3333, "Rita Lobo", 46));
        fila.offer(new Aluno("Culinaria", 8, 4444, "Claude Troisgros", 64));

        System.out.println("Inicio da Fila:" + fila.peek().getId() + " - " + fila.peek().getNome());

        // Interator utilizado para correr a fila, veja mais na documentação JAVA
        for (Iterator it = fila.iterator(); it.hasNext();) {
            Aluno c = (Aluno) it.next();
            System.out.println(c.getId() + " - " + c.getNome());
        }

        System.out.println("Removendo:" + fila.peek().getNome());
        fila.poll();

        System.out.println("Topo:" + fila.peek().getNome());
    }
}
