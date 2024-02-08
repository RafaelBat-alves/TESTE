public class Main {
    public static void main(String[] args) {
        alugar alugar = new alugar();
     carro carros = alugar.AlugandoCarro();
     alugar.devolvendocarro(carros);

     barco barcos = alugar.ALUGANDOBARCO();
     alugar.devolvendobarco(barcos);

    }

}