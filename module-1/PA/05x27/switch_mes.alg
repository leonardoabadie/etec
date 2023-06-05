algoritmo "exemplo de switch-case"

var

mes: inteiro
continuar: inteiro

inicio

continuar <- 1

enquanto continuar = 1 faca

   escreva("Digite o número do mês atual: ")
   leia(mes)

   escolha(mes)
      caso 1
         escreval("janeiro")
      caso 2
         escreval("fevereiro")
      caso 3
         escreval("março")
      caso 4
         escreval("abril")
      caso 5
         escreval("maio")
      caso 6
         escreval("junho")
      caso 7
         escreval("julho")
      caso 8
         escreval("agosto")
      caso 9
         escreval("setembro")
      caso 10
         escreval("outubro")
      caso 11
         escreval("novembro")
      caso 12
         escreval("dezembro")

      outrocaso
         escreval("Valor inválido! Tente novamente.")
   fimescolha


   escreval("Digite 1 se deseja continuar, caso contrário, digite 0 para sair: ")
   leia(continuar)

   se continuar = 0 entao
      continuar <- 0
   fimse

fimenquanto

fimalgoritmo
