package Principal;

import Model.Bebida;

public class Principal {

    public static void main(String[] args) {

        String codigoatual = "2568715";
        String novocodigo = codigoatual;

        // Instanciação de objeto da classe Bebida que implementa PRODUTO.
        Bebida objetobebida1 = new Bebida();

        System.out.println("TESTE 1 : Cod.: " + novocodigo);

        novocodigo = objetobebida1.Incluircodigo_inicio(codigoatual);

        System.out.println("TESTE 2 : Cod.: " + novocodigo);

        novocodigo = objetobebida1.Incluircodigo_fim(novocodigo);

        System.out.println("TESTE 3 : Cod.: " + novocodigo);

    }

}
