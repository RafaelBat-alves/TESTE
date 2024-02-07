public class carro {
    private String nome;

    public carro(String nome) {
        this.nome = nome;
    }

    @Override
    public String toString() {
        return "carro{" +
                "nome='" + nome + '\'' +
                '}';
    }
}
