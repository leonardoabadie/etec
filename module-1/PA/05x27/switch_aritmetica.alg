algoritmo "exemplo de switch-case"

var

continuar: inteiro
i: inteiro
n: vetor [0..1] de real
operacao: caractere

inicio

continuar <- 1

   enquanto continuar <> 0 faca

      para i de 0 ate 1 faca
         escreva("Digite o ", i+1, "º valor: ")
         leia(n[i])
      fimpara

      escreva("Digite a operação que deseja realizar( soma  + | subtracao - | multiplicacao * | divisao / ): ")
      leia(operacao)

      se operacao = "+" entao
         operacao <- "++"
      fimse

      escolha operacao
      caso "++"
         escreval(n[0], " + ", n[1], " = ", n[0]+n[1])

      caso "-"
         escreval(n[0], " - ", n[1], " = ", n[0]-n[1])
         escreval(n[1], " - ", n[0], " = ", n[1]-n[0])

      caso "*", "x", "X"
         escreval(n[0], " * ", n[1], " = ", n[0]*n[1])

      caso "/"
         escreval(" ", n[0], " / ", n[1], " = ", n[0]/n[1])
         escreval(" ", n[1], " / ", n[0], " = ", n[1]/n[0])

      outrocaso
         escreval("OPCAO INCORRETA")
      fimescolha


      escreva("Se deseja continuar, digite 1 (0 sai): ")
      leia(continuar)

   fimenquanto

FIMALGORITMO
