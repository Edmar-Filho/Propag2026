public class Exemplo5 {
    public static void main(String[] args) {
        char resposta = 'S';

        if (resposta == 'S' || resposta == 's') {
            System.out.println("Continue logado no Sistema.");
        } else if (resposta == 'N' || resposta == 'n') {
            System.out.println("Nao continua logado no sistema.");
        } else {
            System.out.println("Resposta invalida.");
        }
    }
}
