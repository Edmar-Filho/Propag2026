public class Exemplo2 {

    public static void main(String[] args) {

        byte idade=25;
        float altura=1.80f, peso=88.5f;
        String nome="Amanda";

        System.out.println("Nome: " + nome + ",\n Idade: " + idade + ",\n Altura: " + altura + ",\n Peso: " + peso);

        if (idade >= 18 || altura >= 1.80f) {
            System.out.println("Você esta apto para participar da competição.");
        } else {
            System.out.println("Você não está apto para participar da competição.");
        }
    }
}