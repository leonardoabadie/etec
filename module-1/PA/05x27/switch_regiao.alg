algoritmo "Estados por região"

var

opcao_regiao: inteiro
continuar: inteiro

inicio
LIMPATELA

escreval("1 - NORTE / 2 - SUL / 3 - NORDESTE / 4 - SUDESTE / 5 - CENTRO-OESTE")
escreval("Escolha uma região(de acordo com as opções disponíveis acima): ")
leia(opcao_regiao)

continuar <- 1

enquanto continuar = 1 faca

   escolha(opcao_regiao)
       caso 1
           escreval("Estados da região do norte: ")
           escreval("Acre / Amapá / Amazonas / Pará / Rondônia / Roraima / Tocantins ")

       caso 2
           escreval("Estados da região do sul: ")
           escreval("Paraná / Santa Catarina / Rio Grande do Sul ")
       caso 3
           escreval("Estados da região do nordeste: ")
           escreval("Alagoas / Bahia / Ceará / Maranhão / Paraíba ")
           escreval("Pernambuco / Piauí / Rio grande do norte / Sergipe ")
       caso 4
           escreval("Estados da região do sudeste: ")
           escreval("São paulo / Rio de janeiro / Minas gerais / Espírito santo ")
       caso 5
           escreval("Estados da região do centro-oeste: ")
           escreval("Distrito Federal(Brasília) / Goiás / Mato grosso do sul ")
       outrocaso
           escreval("OPÇÃO INVÁLIDA - TENTE NOVAMENTE")
   fimescolha
   
   escreva(" Se você deseija continuar, digite 1, caso contrário, digite 0 para sair: ")
   leia(continuar)

fimenquanto
fimalgoritmo
