enum DiasSemana {
  DOMINGO,
  SEGUNDA,
  TERCA,
  QUARTA,
  QUINTA,
  SEXTA,
  SABADO
}

public class Main {
  public static void main(String[] args) {
    // percorrendo por cada constante (dia da semana)
    for(DiasSemana diaSemana: DiasSemana.values()) {
      System.out.println("Estamos em uma " + diaSemana);
    }
  }
}