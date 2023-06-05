algoritmo "exemplo_algoritmo"

var

cont, somatorio_cont, fatorial_cont: inteiro

inicio

cont <- 1
fatorial_cont <- 1

repita
    escreval("O valor atual de cont é: ", cont)
    somatorio_cont <- somatorio_cont + cont
    fatorial_cont <- fatorial_cont * cont
    cont <- cont + 1

ate (cont > 10)

escreval("")
escreval("Somatório de cont: ", somatorio_cont)
escreval("Fatorial de", cont-1, ": ", fatorial_cont)

fimalgoritmo
