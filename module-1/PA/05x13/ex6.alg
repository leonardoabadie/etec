algoritmo "exercicio 6 - Programa��o e algoritmos"
// Fun��o : Rebecer dois n�meros e exibir quem � o maior ou o menor,
// e exibir tamb�m caso eles forem iguais

// Autor : Matias
// Data : 5/20/2022

var

a, b: real

inicio

escreva("Insira o 1� valor $  ")
leia(a)
escreva("Insira o 2� valor $  ")
leia(b)

se nao (a = b) entao
   se a > b entao
      escreval(a, " � o maior")
      escreva(b, " � o menor")
   senao
      escreval(b, " � o maior")
      escreva(a, " � o menor")
   fimse
senao
   escreva(a, " e ", b, " s�o iguais!!")
fimse
fimalgoritmo
