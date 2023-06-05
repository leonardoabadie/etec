algoritmo  "exercicio 3 - Programação e algoritmos"

var

n1, n2, resultado: inteiro

inicio

escreva("Insira o 1º valor > ")
leia(n1)
escreva("Insira o 2º valor > ")
leia(n2)



se n1 > n2 entao
   resultado <- n1 - n2
senao
     resultado <- n2 - n1
fimse

escreval("a diferenca do maior pelo menor valor e igual a: ",)



fimalgoritmo


escreva("peso 1: ")
leia(p1)
escreva("peso 2: ")
leia(p2)
escreva("peso 3: ")
leia(p3)

se (p1 > p2) e (p1 > p3) entao
   escreva(p1)
senao
     se (p2 > p1) e (p2 > p3) entao
        escreva(p2)
        
     senao
        escreva(p3)
        
     fimse
fimse




