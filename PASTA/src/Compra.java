import java.util.*;

public class Compra {
    public static void main(String[] args) {
        Stores s = new Stores("CALÇA",30);
        List<Stores> ss = new ArrayList<>();
        ss.add(s);
        Shopping SS = new Shopping();
        SS.setStores(ss);
        SS.Purchased();



        Scanner keyboard = new Scanner(System.in);

        double limitBalance;
        while (true){
            System.out.println("WHAT IS THE PURCHASE LIMIT???");
            String amount = keyboard.next();
            try {
                limitBalance = Double.parseDouble(amount);
                if (limitBalance >= 0) {

                    break;
                }
            }catch (NumberFormatException ex){
                ex.printStackTrace();

            }


        }

        Map<String,Double> Shopping = new HashMap<>();
        List<String> products = new ArrayList<>();
        List<Double> cost = new ArrayList<>();


        while (true){
            System.out.println("WHAT IS THE NAME OF THE PRODUCT???");
            String name  = keyboard.next();

            double moneySpent;

            while (true) {
                try {
                    System.out.println("HOW MUCH DOES THIS PRODUCT COST???");

                    String money= keyboard.next();moneySpent = Double.parseDouble(money);
                    if(moneySpent >=0){

                        break;
                    }

                } catch (NumberFormatException ex) {
                    ex.printStackTrace();
                }
            }



            if(limitBalance<moneySpent){
                if(limitBalance<=0){
                    System.out.println("LIMIT IS OVER");
                    break;
                }
                System.out.println("NOT ENOUGH LIMIT TO PURCHASE THIS");

            }else{
                products.add(name);
                cost.add(moneySpent);
                Shopping.put(name,moneySpent);
                limitBalance= limitBalance-moneySpent;

            }
            System.out.println("LIMITE DE COMPRA AINDA EM:"+ limitBalance);
            if(limitBalance<=0){
                break;
                
            }
        }

        System.out.println("-----------PURCHASE LIST--------------");
        for(Map.Entry<String,Double> entry: Shopping.entrySet()){

            System.out.println(entry.getKey()+" ----- "+entry.getValue());

        }
        System.out.println("-----------PURCHASE LIST--------------");


        for(int i= 0; i<products.size();i++){
            System.out.println(cost.get(i)+"---------"+products.get(i));
        }

    }
}