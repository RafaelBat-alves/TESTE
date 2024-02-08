import java.util.ArrayList;
import java.util.List;

public class MetodosGenericos {
    //aqui para criar metodo generico
    public <T> void metodogene(T t){

        List<T> mostraT = new ArrayList<>();
        System.out.println(t);

        for (Object mostra:mostraT){
            System.out.println(mostra);
        }


    }
    public <T> void MostraArraygene(List<T> t){



        for (Object mostra:t){
            System.out.println(mostra);
        }


    }

//para retorna metodo com metodo generico
    public <T> List<T> Retorna(T t){
        List<T> mostraT = new ArrayList<>();
        for (Object mostra:mostraT){


            System.out.println(mostra);
        }
return  mostraT;

    }
    public <T extends List<T>> List<T> Retornos(){

        List<T> mostraT = new ArrayList<>();
        for (Object mostra:mostraT){


            System.out.println(mostra);
        }
        return  mostraT;
    }

    public <T  extends List<? extends T>> List<T> RetornosSuper(){

        List<T> mostraT = new ArrayList<>();
        for (Object mostra:mostraT){


            System.out.println(mostra);
        }
        return  mostraT;
    }
}
