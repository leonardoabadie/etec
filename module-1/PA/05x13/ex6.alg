algoritmo "exercicio 6 - Programação e algoritmos"
// Função : Rebecer dois números e exibir quem é o maior ou o menor,
// e exibir também caso eles forem iguais

// Autor : Matias
// Data : 5/20/2022

var

a, b: real

inicio

escreva("Insira o 1º valor $  ")
leia(a)
escreva("Insira o 2º valor $  ")
leia(b)

se nao (a = b) entao
   se a > b entao
      escreval(a, " é o maior")
      escreva(b, " é o menor")
   senao
      escreval(b, " é o maior")
      escreva(a, " é o menor")
   fimse
senao
   escreva(a, " e ", b, " são iguais!!")
fimse
fimalgoritmo
