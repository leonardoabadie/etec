int somatorio(int w, int x, int y, int z) {
  return (w + x + y + z);
}

int main() {
  int w, x, y, z;

  printf("Seja paciente....\n\n");
    
  printf("Digite o 1o valor: ");
  scanf("%d", &w);

  printf("Digite o 2o valor: ");
  scanf("%d", &x);

  printf("Digite o 3o valor: ");
  scanf("%d", &y);

  printf("Digite o 4o valor: ");
  scanf("%d", &z);

  printf("\n%d + %d + %d + %d = %d", w, x, y, z, somatorio(w, x, y, z));

  return 0;
}
