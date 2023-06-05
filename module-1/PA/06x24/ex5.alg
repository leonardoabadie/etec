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

escreva("Número de pessoas participando do sorteio: ")
leia(num_participantes)

num_sorteado <- randi(101)


repita

      limpatela
      
      escreva("Nome do ", cont+1, "º participante: ")
      leia(nome_participante)
      escreva("Número escolhido pelo(a) ", nome_participante, ": ")
      leia(num_escolhidoParcipante)
      
      se num_escolhidoParcipante = num_sorteado entao
          escreval(nome_participante, " ganhou o sorteio!")
          ganhador <- verdadeiro
      fimse

      cont <- cont + 1
      
ate ((cont >= num_participantes) ou (ganhador = verdadeiro))


se ganhador = falso entao
    limpatela
    escreval("Número sorteado: ", num_sorteado)
    escreval("Que pena! Nenhum participante acertou o número sorteado!")
fimse

fimalgoritmo
