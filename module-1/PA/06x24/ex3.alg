algoritmo "exemplo_algoritmo"

var

dimensao_campo: inteiro
tempo_VoltaCompleta: inteiro // segundos
voltas_dadas: inteiro
cont: inteiro
velocidade: real // velocidade_contante = (dimensoes_campo/tempo_VoltaCompleta) * 3,6
peso: real // kg
calorias_perdidas: real

// dimensões do campo : 90m - 120m

inicio

escreva("Peso do atleta(kg): ")
leia(peso)
escreva("Nº de voltas dadas: ")
leia(voltas_dadas)

dimensao_campo <- (90 * 2) + (120 * 2)

repita
      cont <- cont + 1
      escreva("Tempo levado para o atleta realizar a ", cont, "º volta(em segundos): ")
      leia(tempo_VoltaCompleta)
      velocidade <- velocidade + ((dimensao_campo / tempo_VoltaCompleta) * 3.6)
      
ate (cont >= voltas_dadas)

// exibir quantos km/h o atleta percorreu
escreval("Em ", voltas_dadas, " voltas dadas, o atleta percorreu ", velocidade, "km/h" )
calorias_perdidas <- velocidade * peso * 0.0175
// exibir quantas calorias o usuário perdeu
escreval("O atleta perdeu ", calorias_perdidas, "kcal em ", voltas_dadas, " voltas dadas, em uma velocidade de ", velocidade, "km/h")

fimalgoritmo
