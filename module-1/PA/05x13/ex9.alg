Algoritmo "exerc�cio 9 - Programa��o e algoritmos"
// Disciplina  : Programa��o e algoritmos
// Professor   : F�bio Vitor e Carlos Eduardo
// Descri��o   : PROGRAMA QUE RECEBE O NOME DE UM FUNCIONARIO QUALQUER, ALEM DE RECEBER
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
    escreva("Nome do funcion�rio > ")
    leia(funcionario)
    escreva("Qual a meta de vendas a se bater pelo(a) ", funcionario, " para poder ganhar o premio > ")
    leia(meta_vendas)
    escreva("N�mero de vendas realizado pelo(a) ", funcionario, " > ")
    leia(vendas_realizadas)
    
    se (vendas_realizadas >= meta_vendas) entao
        escreval(funcionario, " ganhou o premio!")
        escreval("N�mero de vendas a bater: ", meta_vendas)
        escreval("N�mero de vendas realizadas: ", vendas_realizadas)
    senao
        escreval(funcionario, " NAO ganhou o premio! O n�mero de vendas realizadas n�o atingiu o n�mero de vendas a se bater!")
        escreval("N�mero de vendas a bater: ", meta_vendas)
        escreval("N�mero de vendas realizadas: ", vendas_realizadas)
    fimse
    
    escreval("")
    
    opcao <- 2
    enquanto (opcao <> 0) e (opcao <> 1) faca
        escreva("Digite 1 se deseja continuar, ou 0(zero) se quiser sair > ")
        leia(opcao)
    fimenquanto

fimenquanto


Fimalgoritmo