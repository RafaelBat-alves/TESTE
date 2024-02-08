 abstract class animal{
    public abstract void consulta();
 }
 class cachorro extends animal{

     @Override
     public void consulta() {
         System.out.println("ANIMAL CACHORRO");
     }
 }
 class gato extends animal{

     @Override
     public void consulta() {
         System.out.println("ANIMAL GATO");
     }
 }


public class Generic01 {
    public static void main(String[] args) {

        gato[] gatos = {new gato(),new gato(),new gato()};
        cachorro[] cachorros = {new cachorro(),new cachorro()};
        Generic01.consultando(gatos);
        Generic01.consultando(cachorros);

    }

    public static void consultando(animal[] animais){
        for(animal geral:animais){

            geral.consulta();
        }

    }
}
