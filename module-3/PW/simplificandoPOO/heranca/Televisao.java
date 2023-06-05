package topico.heranca;

public class Televisao {
	protected int[] dimensoes;
	protected int anoLancamento;
	protected String cor, modelo, marca, tipoTela;
	protected int[] canaisAbertos;

	protected int[] obterDimensoes() { return this.dimensoes; }
	protected void setarDimensoes(int[] dimensoes) { this.dimensoes = dimensoes; }

	protected int obterAnoLancamento() { return this.anoLancamento; }
	protected void setarAnoLancamento(int anoLancamento) { this.anoLancamento = anoLancamento; }

	protected String obterCor() { return this.cor; }
	protected void setarCor(String cor) { this.cor = cor; }

	protected String obterModelo() { return this.modelo; }
	protected void setarModelo(String modelo) { this.modelo = modelo; }
	
	protected String obterMarca() { return this.marca; }
	protected void setarMarca(String marca) { this.marca = marca; }
	
	protected String obterTipoTela() { return this.tipoTela; }
	protected void setarTipoTela(String tipoTela) { this.tipoTela = tipoTela; }
	
	protected int[] obterCanaisAbertos() { return this.canaisAbertos; }
	protected void setarCanaisAbertos(int[] canaisAbertos) { this.canaisAbertos = canaisAbertos; }
}