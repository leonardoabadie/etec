algoritmo "Inscri��es para ETEC"

var

i, tot_ds, tot_adm, curso: inteiro

inicio

tot_ds <- tot_adm <- i <- 0

enquanto i <= 30 faca
    escreval("Escolha o curso que voc� deseja se inscrever.....", 5-i, " inscri��es restantes")
    escreva("1 - Desenvolvimento de Sistemas | ")
    escreval("2 - Administra��o ")
    escreva(" =====> ")
    leia(curso)
    limpatela
    
    escolha (curso)
    
    caso 1
        tot_ds <- tot_ds + 1
    caso 2
        tot_adm <- tot_adm + 1
    outrocaso
        escreval("VALOR INV�LIDO!")
        escreval("Op��o escolhida =:> ", curso)
        escreval("Op��es dispon�veis =:> 1 - Desenvolvimento de Sistemas | 2 - Administra��o")
        escreval("")
    fimescolha
    
    se (curso = 1) ou (curso = 2) entao
        i <- i + 1
    fimse
fimenquanto

limpatela

escreval("| INSCRI��ES PARA O 2� SEMESTRE DA ETEC VILA FORMOSA |")
escreva("")
escreval("Total de pessoas inscritas para Etec Esther =:> ", tot_ds + tot_adm )
escreval("N� de inscritos para o curso de DS =:> ", tot_ds)
escreval("N� de inscritos para o curso de ADM =:> ", tot_adm)

fimalgoritmo
