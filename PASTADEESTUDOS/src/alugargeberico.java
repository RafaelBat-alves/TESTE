import java.util.List;

//primeiro vc tem Dizer que esse tipo generico ou ele tem add= <>   e tbm tem add nome<NOME LETRA OU TIPO DENTRO>
//vc pode passar N metodos generic pode ser quantos vc quiser
public class alugargeberico<T> {
    //vc tem passa as coisa com nome generic que vc deu no caso foi T
    private List<T> Objecttipoa;
    public alugargeberico(List<T> objecttipoa){
        this.Objecttipoa = objecttipoa;

    }
    //vc pode pegar objeto e devolver ele
    public T PegarObjeto(){
        System.out.println("PEGANDO OBJETO");
        T t = Objecttipoa.remove(3);
        System.out.println("OBJETO PEGADO "+ t);
        System.out.println("OBJETO QUE SOBRO");
        System.out.println(Objecttipoa);

        return t;
    }
    //sempre tipo que vc add
    public void DevolvendoObjeto(T t){
        System.out.println("OBJETO DEVOLVIDO "+ t);
        Objecttipoa.add(t);
        System.out.println("OBJETO QUE TEM");
        System.out.println(Objecttipoa);


    }
    //sempre usando tipo generic que vc usou

}
