#include <stdio.h>
#include <stdlib.h>

// estrutura de dados homogenea usada para amazenar diferentes campos de um endereco em uma 
// unica estrutura, de forma a tornar mais facil a associacao entre os mesmos
struct endereco
{
    char logradouro[10];
    char endereco[60];
    char cep[10];
    char bairro[40];
    char cidade[40];
    char estado[2];
}

main(){
    // array rua do tipo endereco
    struct endereco rua;
    
    printf("Cadastro de rua: \n\n");
    
    printf("lougradouro: ");
    fflush(stdin);
    gets(rua.logradouro);
    
    printf("endereço: ");
    printf(stdin);
    gets(rua.endereco);

    printf("cep: ");
    printf(stdin);
    gets(rua.cep);
    
    printf("\n-----------------------\n");
    printf("\n\nDados Cadastrados: \n\n");
    printf("\nlogradouro %s", rua.logradouro);
    printf("\nendereço %s", rua.endereco);
    printf("\ncep %s", rua.cep);
}