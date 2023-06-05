algoritmo "exercicio 7 - Programação e algoritmos"
// Função : Rebecer o nome e peso de duas pessoes e, exibir ao final o nome e
// o peso da pessoa > com maior peso!

// Autor : Matias
// Data : 5/20/2022

var

nome: vetor [0..2] de caractere
peso: vetor [0..2] de inteiro
peso_igual: real

inicio

escreval("Por favor, preecha os campo a seguir")

escreva("Insira o 1ºnome: ")
leia(nome[0])
escreva("Insira(escreva) o peso dessa pessoa: ")
leia(peso[0])
escreva("Insira o 2ºnome: ")
leia(nome[1])
escreva("Insira(escreva) o peso dessa pessoa: ")
leia(peso[1])

se nao (peso[0] = peso[1]) entao
    se peso[0] > peso[1] entao
        escreval(nome[0], " possue o maior peso: ", peso[0])
    senao
        escreval(nome[1], " possue o maior peso: ", peso[1])
    fimse
senao
    peso_igual <- peso[0]
    escreval(nome[0], " e ", nome[1], ", ambos possuem ", peso_igual, "kg" )
fimse

fimalgoritmo
