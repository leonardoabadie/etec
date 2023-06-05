algoritmo "exemplo_algoritmo"

var

rodada, sorteio: inteiro
TOTAL: inteiro

inicio

rodada <- 1

repita

    sorteio <- randi(31) // gera um número aleatório que esteja dentro do intervalo de 1 - 30
    escreval("Número Sorteado => ", sorteio)
    
    rodada <- rodada + 1

ate (rodada = 20)

fimalgoritmo
