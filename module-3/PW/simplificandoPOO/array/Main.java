package topico.array;

public class Main {
    public static void main(String[] args) {
        String[] disciplinasCurso = {
            "Programação Web", 
            "Programação de Aplicativos Mobile", 
            "Segurança da Informação", 
            "Redes de Computadores", 
            "Desenvolvimento de Sistemas", 
            "Linguagem Trabalho e Tecnologia", 
            "Trabalho de Conclusão do Curso"
        };

        System.out.println("**** Disciplinas do curso de DS ****");

        for(String disciplina: disciplinasCurso) {
            System.out.println("> " + disciplina);
        }
    }
}


