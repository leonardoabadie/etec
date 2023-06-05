algoritmo "Inscrições para ETEC"

var

i, tot_ds, tot_adm, curso: inteiro

inicio

tot_ds <- tot_adm <- i <- 0

enquanto i <= 30 faca
    escreval("Escolha o curso que você deseja se inscrever.....", 5-i, " inscrições restantes")
    escreva("1 - Desenvolvimento de Sistemas | ")
    escreval("2 - Administração ")
    escreva(" =====> ")
    leia(curso)
    limpatela
    
    escolha (curso)
    
    caso 1
        tot_ds <- tot_ds + 1
    caso 2
        tot_adm <- tot_adm + 1
    outrocaso
        escreval("VALOR INVÁLIDO!")
        escreval("Opção escolhida =:> ", curso)
        escreval("Opções disponíveis =:> 1 - Desenvolvimento de Sistemas | 2 - Administração")
        escreval("")
    fimescolha
    
    se (curso = 1) ou (curso = 2) entao
        i <- i + 1
    fimse
fimenquanto

limpatela

escreval("| INSCRIÇÕES PARA O 2º SEMESTRE DA ETEC VILA FORMOSA |")
escreva("")
escreval("Total de pessoas inscritas para Etec Esther =:> ", tot_ds + tot_adm )
escreval("Nº de inscritos para o curso de DS =:> ", tot_ds)
escreval("Nº de inscritos para o curso de ADM =:> ", tot_adm)

fimalgoritmo
