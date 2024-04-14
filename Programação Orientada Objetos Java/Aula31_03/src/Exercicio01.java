import java.util.Scanner;
import java.util.Random;
public class Exercicio01 {
   public static void main(String[] args){
       Scanner leitor = new Scanner(System.in);
       Random gerador =  new Random();
       int n;
       System.out.println("Caro usuário, quantos sorteios você deseja?");
       n = leitor.nextInt();
       int contador = 1;
       while(contador <= n){
           int d1 = gerador.nextInt(6) + 1;
           int d2 = gerador.nextInt(6) +1;
           if (d1 < d2)
               System.out.printf("%d %c %d\n", d1, '<', d2);
           else if (d1 == d2)
               System.out.printf("%d = %d\n", d1, d2);
           else
               System.out.println (d1 + ">" + d2);
           contador = contador ++;
       }
       leitor.close();
   } 
    
}
