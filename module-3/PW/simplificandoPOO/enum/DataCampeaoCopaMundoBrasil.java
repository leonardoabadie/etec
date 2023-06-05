enum DataCampeaoCopaMundoBrasil {
  1958,
  1962,
  1970,
  1994,
  2002
}

public class Main {
  public static void main(String[] args) {
    // percorrendo por cada constante (edicao que o Brasil ganhou a copa)
    for(DataCampeaoCopaMundoBrasil dataEdicao: DataCampeaoCopaMundoBrasil.values()) {
      System.out.println("Campeao em " + dataEdicao);
    }
  }
}