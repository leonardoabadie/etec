algoritmo "teste"

var

i, idade, menordeidade, maiordeidade: inteiro

inicio

maiordeidade <- 0
menordeidade <- 0

para i de 1 ate 10 passo 1 faca
    escreva("Digite a ", i, "º idade: ")
    leia(idade)
    se idade >= 18 entao
        maiordeidade <- maiordeidade + 1
    senao
        menordeidade <- menordeidade + 1
    fimse
fimpara

limpatela

escreval("Foram cadastrados ", maiordeidade, " pessoas maiores de idade.")
escreval("Foram cadastrados ", menordeidade, " pessoas menores de idade.")

fimalgoritmo
