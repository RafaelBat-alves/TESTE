import java.util.*;

public class Compra {
    public static void main(String[] args) {



        Shopping shopping = new Shopping();
        List<Stores> storess = new ArrayList<>();
        Scanner teclado = new Scanner(System.in);
        boolean sair = false;
while (true) {

        System.out.println("QUAL SALDO LIMITE");
        String valor = teclado.next();
    try {
        shopping.setLimitBalance(Double.parseDouble(valor));
        if(shopping.getLimitBalance()>=0){
         break;
        }
    }catch (NumberFormatException ex){
       ex.printStackTrace();
    }

}
        while (!sair){
            Stores stores = new Stores();

            System.out.println("NOME DO PRODUTO");

            stores.setName(teclado.next());
           while (true){
               System.out.println("PREÇO DO PRODUTO");
               String valor = teclado.next();
               try {

                   stores.setCost(Double.parseDouble(valor));
                   if(stores.getCost()<=shopping.getLimitBalance()){
                       break;
                   }
               }catch (NumberFormatException ex){
                 ex.printStackTrace();
               }

           }


            if (shopping.Launchpurchase(stores)){


                    storess.add(stores);
                    shopping.setStores(storess);
                    System.out.println("FOI ADD");

                shopping.setLimitBalance(shopping.getLimitBalance()-stores.getCost());
            }else{
                sair = true;
            }




            System.out.println(shopping.getLimitBalance());
          if(!shopping.Launchpurchase(stores)){
              sair = true;

          }

        }


        shopping.Purchased();

    }
}s
