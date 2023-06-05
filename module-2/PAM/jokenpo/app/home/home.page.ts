import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  templateUrl: 'home.page.html',
  styleUrls: ['home.page.scss'],
})

export class HomePage {
  public possiveisJogadas = [
    ["pedra", "tesoura"],
    ["papel", "pedra"],
    ["tesoura", "papel"]
  ];

  public gestos = ["pedra", "papel", "tesoura"];

  public mensagemUsuario: string = "LANÇAR";
  public gestoUsuario: string = "";
  public gestoMaquina: string = "";

  public pontuacaoUsuario: number = 0;
  public pontuacaoMaquina: number = 0;

  public caminhoPadraoImagens: string = "../../assets/images/";
  public caixaSecretaImagem: string = "caixa-secreta.png";
  public gestoUsuarioImagem: string = this.caminhoPadraoImagens.concat(this.caixaSecretaImagem);
  public gestoMaquinaImagem: string = this.caminhoPadraoImagens.concat(this.caixaSecretaImagem);

  constructor() {}

  resetaElementosHTML(elemento) {
    switch(elemento) {
      case "imagem":
        const caixaSecretaTmp = this.caminhoPadraoImagens.concat(this.caixaSecretaImagem);
        this.gestoUsuarioImagem = caixaSecretaTmp;
        this.gestoMaquinaImagem = caixaSecretaTmp;

        break;

      case "gesto":
        this.gestoUsuario = "";
        this.gestoMaquina = "";

        break;
    }
    
  return;
  }

  iniciarPartida() {
    // Se o usuario nao selecionou nenhum gesto, nao proceder com o round
    if (this.gestoUsuario === "") {
      return;
    }

    var index = Math.floor(Math.random() * this.gestos.length);
    this.gestoMaquina = this.gestos[index];

    // Trocando a imagem dos jogadores para o seus respectivos gestos
    this.gestoUsuarioImagem = this.caminhoPadraoImagens.concat(this.gestoUsuario, "-esquerda.png");
    this.gestoMaquinaImagem = this.caminhoPadraoImagens.concat(this.gestoMaquina, "-direita.png");

    // Se os oponentes 'tiraram' sinais identicos, entao houve um empate
    if (this.gestoUsuario === this.gestoMaquina) {
      this.resetaElementosHTML("gesto");

      return;
    }
    
    // Checando quem venceu o round
    for (var i in this.possiveisJogadas) {
      var gesto1 = this.possiveisJogadas[i][0];
      var gesto2 = this.possiveisJogadas[i][1];

      if ((this.gestoUsuario === gesto1) && (this.gestoMaquina === gesto2)) {
        this.pontuacaoUsuario++;

        break;
      }

      if ((this.gestoMaquina === gesto1) && (this.gestoUsuario === gesto2)) {
        this.pontuacaoMaquina++;

        break;
      }
    }

    this.resetaElementosHTML("gesto");
    
    return;
  }

  pegarGesto(gesto) {
    this.resetaElementosHTML("imagem");

    this.gestoUsuario = gesto;
    this.mensagemUsuario = "LANÇAR ".concat(gesto.toUpperCase());

    return;
  }
}
