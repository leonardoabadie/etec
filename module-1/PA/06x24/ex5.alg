algoritmo "exemplo_algoritmo"

var

nome_participante: caractere
num_escolhidoParcipante: inteiro
num_participantes: inteiro
num_sorteado: inteiro
cont: inteiro
ganhador: logico

inicio

ganhador <- falso

escreva("N�mero de pessoas participando do sorteio: ")
leia(num_participantes)

num_sorteado <- randi(101)


repita

      limpatela
      
      escreva("Nome do ", cont+1, "� participante: ")
      leia(nome_participante)
      escreva("N�mero escolhido pelo(a) ", nome_participante, ": ")
      leia(num_escolhidoParcipante)
      
      se num_escolhidoParcipante = num_sorteado entao
          escreval(nome_participante, " ganhou o sorteio!")
          ganhador <- verdadeiro
      fimse

      cont <- cont + 1
      
ate ((cont >= num_participantes) ou (ganhador = verdadeiro))


se ganhador = falso entao
    limpatela
    escreval("N�mero sorteado: ", num_sorteado)
    escreval("Que pena! Nenhum participante acertou o n�mero sorteado!")
fimse

fimalgoritmo
