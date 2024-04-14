package Model;

public interface Produto {

    // Atributos da interface
    public static final String codigoinicial = "BR01SC";
    public static final String codigofinal = "JOÂO";

    // M�todos abstratos, mesmo sem USAR ABSTRACT
    public String Incluircodigo_inicio(String codigoatual);
    public String Incluircodigo_fim(String codigoatual);

}
