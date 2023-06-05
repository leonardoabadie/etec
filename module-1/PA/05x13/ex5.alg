algoritmo  "exercicio 5 - Programação e algoritmos"

var

n1, n2, n3, n4, media: real

inicio

escreval("---MÉDIA DO(A) ALUNO(A)---")
escreva("nota 1: ")
leia(n1)
escreva("nota 2: ")
leia(n2)
escreva("nota 3: ")
leia(n3)
escreva("nota 4: ")
leia(n4)

media <- (n1 + n2 + n3 + n4) / 4

se media >= 5 entao
   escreval("aprovado!")
   escreval("media > ", media)
senao
   escreval("reprovado!")
   escreval("media > ", media)
fimse

fimalgoritmo



