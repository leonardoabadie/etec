package topico.construtor;

public class Cachorro {
    public String nome;

    public String obterNome() { 
        return this.nome; 
    }
    
    public void setarNome(String nome) { 
        this.nome = nome; 
    }

    // Meu Auau ..nome é Auau Caramelo Auau
    public void latir(String latido) {
        System.out.println("Meu " + latido " ..nome é " + latido + " " + this.obterNome() + " " + latido);
    }

    public void darPirueta(int piruetas) {
        for (int pirueta = 1; pirueta <= piruetas; pirueta++) {
            System.out.println("Dando " + pirueta + "º pirueta...");
        }

        System.out.println("Chega, estou tonto!");
    }

    // metodo construtor deve ter o mesmo nome que a classe
    public Cachorro(String nome, String latido, int piruetas) {
        this.setarNome(nome); // Caramelo
        this.latir(latido); // Auau
        this.darPirueta(piruetas); 
    }
}


