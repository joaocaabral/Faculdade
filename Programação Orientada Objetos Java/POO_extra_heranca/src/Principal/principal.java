package Principal;

import Model.animal;
import Model.cachorro;
import Model.gato;
import Model.cavalo;

public class principal {
    public static void main (String[] args){
        cachorro cachorro1 = new cachorro();
        cachorro1.late();
        cachorro1.comer();
        cachorro1.andar();
        cachorro1.descancar();
        
        gato gato1 = new gato();
        gato1.mia();
        gato1.comer();
        gato1.andar();
        gato1.descancar();
        
        cavalo cavalo1 = new cavalo();
        cavalo1.relincha();
        cavalo1.comer();
        cavalo1.andar();
        cavalo1.descancar();
        
    }
 
}