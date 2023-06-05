package topico.heranca;

public class TelevisaoSmart extends Televisao {
  private Boolean conectadoInternet;
  private String[] appsInstalados;
  private String[] redesConectadas;
  private String[] contasRegistradas;

  private Boolean obterConectadoInternet() { return this.conectadoInternet; }
  private void setarConectadoInternet(Boolean conectadoInternet) { this.conectadoInternet = conectadoInternet; }

  private String[] obterAppsInstalados() { return this.appsInstalados; }
  private void setarAppsInstalados(String[] appsInstalados) { this.appsInstalados = appsInstalados; }

  private String[] obterRedesConectadas() { return this.redesConectadas; }
  private void setarRedesConectadas(String[] redesConectadas) { this.redesConectadas = redesConectadas; }

  private String[] obterContasRegistradas() { return this.contasRegistradas; }
  private void setarContasRegistradas(String[] contasRegistradas) { this.contasRegistradas = contasRegistradas; }
}