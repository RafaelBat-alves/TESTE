import java.util.ArrayList;
import java.util.List;

public class Main2 {
    public static void main(String[] args) {
         List<carro> carrosAlugar = new ArrayList<>(List.of(new carro("FUSCA"),new carro("BMW")));
         List<barco> barcosAlugar = new ArrayList<>(List.of(new barco("NAVE"),new barco("FUTURAMA")));
         alugarServerl<carro> carroalugarServerl = new alugarServerl<>(carrosAlugar);
         carro carro = carroalugarServerl.AlugandoObject();
         carroalugarServerl.DevolvendoObjeto(carro);


         System.out.println("----------------------------");
         alugarServerl<barco> barcoalugarServerl = new alugarServerl<>(barcosAlugar);
         barco barco = barcoalugarServerl.AlugandoObject();
         barcoalugarServerl.DevolvendoObjeto(barco);
         System.out.println("----------------------------");
         List<String> coisas = new ArrayList<>(List.of("ROUPAS","MADEIRA","GARFO","FACA","CAMA","REMEDIO"));
         alugargeberico<String> stringalugargeberico = new alugargeberico<>(coisas);
         String string = stringalugargeberico.PegarObjeto();
         stringalugargeberico.DevolvendoObjeto(string);
         System.out.println("----------------------------");
MetodosGenericos m = new MetodosGenericos();
m.MostraArraygene(carrosAlugar);


    }

}