import java.util.ArrayList;
import java.util.List;

public class alugarServerl<T> {
    private List<T> ObjectAlugar;

    public alugarServerl(List<T> objectAlugar){
        this.ObjectAlugar = objectAlugar;

    }
    public T AlugandoObject(){
        System.out.println("ALUGANDO OBJECT....");
        T OBJETO = ObjectAlugar.remove(0);
        System.out.println("OBJECT.... ALUGADO "+ OBJETO);
        System.out.println("OBJECT DISPONIVEL....");
        System.out.println(ObjectAlugar);
        return OBJETO;
    }
    public void DevolvendoObjeto(T t){
        System.out.println("DEVOLVENDO OBJECT "+ t);
        ObjectAlugar.add(t);
        System.out.println("OBJECT DISPONIVEIS");
        System.out.println(ObjectAlugar);
    }


}
