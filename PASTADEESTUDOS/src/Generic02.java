import java.util.List;

public class Generic02 {
    public static void main(String[] args) {
        List<cachorro> cachorro = List.of(new cachorro());
        List<gato> gato = List.of(new gato());
        List<animal> animalss = List.of(new gato(),new cachorro());
        // Uma vez compirado ele não sabe que lista de cachorro ele pode ser refernciado por animal
       // Generic02.consultando(cachorro);
       // Generic02.consultando(gato);
        //mas par funcionar precisa referencia diretamente tem que ser animal

        Generic02.consultando(animalss);


        List<animal> animals = List.of();

    }

    public static void consultando(List<animal> animais){
        for(animal geral:animais){

            geral.consulta();
        }

    }
}
