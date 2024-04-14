package Model;

public class Bebida implements Produto {

    // construtor
    public Bebida() {
    }

    // métodos com implementação OBRIGATÓRIA
    @Override
    public String Incluircodigo_inicio(String codigoatual) {
        return Produto.codigoinicial + codigoatual;
    }

    @Override
    public String Incluircodigo_fim(String codigoatual) {
        return codigoatual + Produto.codigofinal;
    }

}
