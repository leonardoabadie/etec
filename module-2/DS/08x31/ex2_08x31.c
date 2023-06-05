#include <stdio.h>

void proc_dobro(int x) {
  printf("O dobro de %d é %d\n", x, x * 2);
}

void proc_triplo(int x) {
  printf("O triplo de %d é %d\n", x, x * 3);
}

int dobro(int x) {
  return x * 2;
}

int triplo(int x) {
  return x * 3;
}

int main() {
  int x;
    
  printf("Digite um número qualquer: ");
  scanf("%d", &x);
    
  printf("O dobro de %d é %d\n", x, dobro(x));
  printf("O triplo de %d é %d\n", x, triplo(x));
    
  return 0;
}
