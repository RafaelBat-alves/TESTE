import java.util.ArrayList;
import java.util.List;

public class alugar {
    private List<carro> carrosAlugar = new ArrayList<>(List.of(new carro("FUSCA"),new carro("BMW")));
    private List<barco> barcosAlugar = new ArrayList<>(List.of(new barco("NAVE"),new barco("FUTURAMA")));


    public carro AlugandoCarro(){
        System.out.println("ALUGANDO CARRO....");
        carro carrinho = carrosAlugar.remove(0);
        System.out.println("CARRO.... ALUGADO "+ carrinho);
        System.out.println("CARROS DISPONIVEL....");
        System.out.println(carrosAlugar);
        return carrinho;
    }
    public void devolvendocarro(carro carro){
        System.out.println("DEVOLVENDO CARRO "+ carro);
        carrosAlugar.add(carro);
        System.out.println("CARRO DISPONIVEIS");
        System.out.println(carrosAlugar);
    }

    public barco ALUGANDOBARCO(){
        System.out.println("ALUGANDO BARCO....");
        barco barcos = barcosAlugar.remove(0);
        System.out.println("BARCO.... ALUGADO "+ barcos);
        System.out.println("BARCO DISPONIVEL....");
        System.out.println(barcosAlugar);
        return barcos;
    }

    public void devolvendobarco(barco barcos){
        System.out.println("DEVOLVENDO BARCO "+ barcos);
        barcosAlugar.add(barcos);
        System.out.println("BARCO DISPONIVEIS");
        System.out.println(barcosAlugar);
    }
}
