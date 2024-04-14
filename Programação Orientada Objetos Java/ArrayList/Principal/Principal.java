package Principal;

//import DAO.AlunoDAO;
import Model.Aluno;
import java.util.*;

public class Principal {

    public static void main(String[] args) {

//        /*
//  SIMULAÇÃO SIMPLES DO USO DE ARRAYLIST
//         */
        ArrayList<Aluno> listasimples = new ArrayList<>();
//
//        // Criando objetos para inserir
        Aluno aluno1 = new Aluno("Sistemas", 7, 1111, "Tiburcio", 95);
       Aluno aluno2 = new Aluno("Massagem", 2, 2222, "Marilene", 21);
//
        listasimples.add(aluno1);
        listasimples.add(aluno2);
//
        System.out.println("\n ##########----------TESTE 1--------####### \n ");
        System.out.println(listasimples.toString());
//
        //apagando aluno1 da lista.
        listasimples.remove(0);
//
        System.out.println("\n ##########----------TESTE 2--------####### \n ");
        System.out.println(listasimples.toString());
//
        Aluno aluno2alterado = new Aluno("Massagem Plus", 3, 2222, "Marileneeeee", 25);
        listasimples.set(0, aluno2alterado);
        System.out.println("\n ##########----------TESTE 3--------####### \n ");
        System.out.println(listasimples.toString());

    	// varredura da nossa listasimples listando só os nomes.
        Aluno aluno3 = new Aluno("Culinaria", 4, 3333, "Rita Lobo", 46);
        Aluno aluno4 = new Aluno("Culinaria", 8, 4444, "Claude Troisgros", 64);

        listasimples.add(aluno3);
        listasimples.add(aluno4);

        System.out.println("\n ##########----------TESTE 4--------####### \n ");
        int tamanholista = listasimples.size();
        for (int i = 0; i < tamanholista; i++) {
            System.out.println("Nome: " + listasimples.get(i).getNome());
        }

        
        // Usando Collections para ordenar
        Collections.sort(listasimples, new Comparator() {

            public int compare(Object o1, Object o2) {
                Aluno a1 = (Aluno) o1;
                Aluno a2 = (Aluno) o2;
                return a1.getNome().compareToIgnoreCase(a2.getNome()); // retorna -1 se for menor e +1 se for maior.
            }
        });
        
        
        System.out.println("\n ##########----------TESTE 5--------####### \n ");
        int tamanholista2 = listasimples.size();
        for (int i = 0; i < tamanholista2; i++) {
            System.out.println("Nome: " + listasimples.get(i).getNome());
        }  
        
        
        

        
        
    }

}
