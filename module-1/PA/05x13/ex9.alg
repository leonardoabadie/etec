Algoritmo "exercício 9 - Programação e algoritmos"
// Disciplina  : Programação e algoritmos
// Professor   : Fábio Vitor e Carlos Eduardo
// Descrição   : PROGRAMA QUE RECEBE O NOME DE UM FUNCIONARIO QUALQUER, ALEM DE RECEBER
// O NUMERO DE VENDAS QUE ELE TEM QUE BATER E, O NUMERO DE VENDAS REALIZADAS
// Autor(a)    : Leonardo Abadie
// Data atual  : 20/05/2022
Var
opcao: inteiro
meta_vendas: inteiro
vendas_realizadas: inteiro
funcionario: caractere
Inicio
opcao <- 1
enquanto (opcao <> 0)faca
    escreval("")
    escreva("Nome do funcionário > ")
    leia(funcionario)
    escreva("Qual a meta de vendas a se bater pelo(a) ", funcionario, " para poder ganhar o premio > ")
    leia(meta_vendas)
    escreva("Número de vendas realizado pelo(a) ", funcionario, " > ")
    leia(vendas_realizadas)
    
    se (vendas_realizadas >= meta_vendas) entao
        escreval(funcionario, " ganhou o premio!")
        escreval("Número de vendas a bater: ", meta_vendas)
        escreval("Número de vendas realizadas: ", vendas_realizadas)
    senao
        escreval(funcionario, " NAO ganhou o premio! O número de vendas realizadas não atingiu o número de vendas a se bater!")
        escreval("Número de vendas a bater: ", meta_vendas)
        escreval("Número de vendas realizadas: ", vendas_realizadas)
    fimse
    
    escreval("")
    
    opcao <- 2
    enquanto (opcao <> 0) e (opcao <> 1) faca
        escreva("Digite 1 se deseja continuar, ou 0(zero) se quiser sair > ")
        leia(opcao)
    fimenquanto

fimenquanto


Fimalgoritmo