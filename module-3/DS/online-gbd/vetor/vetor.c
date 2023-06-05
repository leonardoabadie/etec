#include <stdio.h>

int main(){
    // arrray idade unidimensional do tipo inteiro, com dez indices
    int idade[10], cont, n;
    
    for(cont = 0; cont < 10; cont++){
        printf("Digite a %d idade: ", cont +1);
        fflush(stdin);
        scanf("%d", &idade[cont]); 
    }
    
    printf("\nValores cadastrados: \n");
    for(cont = 0; cont < 10; cont++){
        printf("idade[%d] = %d\n", cont + 1, idade[cont]);
    }
}