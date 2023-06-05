#include <iostream>

using namespace std;

int main ()
{
  char categoria;
  int chave_desconto;
  int valor_seguro;
  int tempo_seguro;
  double descontos[5][4] = {
    {10.0, 12.0, 15.0, 20.0},
    {5.0, 6.0, 7.0, 8.0},
    {20.0, 22.0, 25.0, 30.0},
    {5.0, 5.0, 15.0, 15.0},
    {10.0, 10.0, 15.0, 15.0}
  };

  cout << "[*] Digite a categoria da carteira (A-B-C-D-E): ";
  cin >> categoria;
  categoria = toupper (categoria);

  cout << "[*] Digite o período da carteira (em anos) (Ex.: 5): ";
  cin >> tempo_seguro;

  cout << "[*] Digite o valor (R$) atual do seguro: ";
  cin >> valor_seguro;

  cout << "\n";

  switch (categoria)
  {
    case 'A':
      chave_desconto = 0; break;
    case 'B':
      chave_desconto = 1; break;
    case 'C':
      chave_desconto = 2; break;
    case 'D':
      chave_desconto = 3; break;
    case 'E':
      chave_desconto = 4; break;
    default:
      cout << "[!] CATEGORIA INVÁLIDA - TENTE NOVAMENTE!";
      exit (1);
  }

  switch (tempo_seguro)
  {
    case 0 ... 4:
      cout << "DESCONTO (%) : " << descontos[chave_desconto][0];
      cout << "\nDESCONTO APLICADO (- R$): " << valor_seguro * (descontos[chave_desconto][0] / 100);
      cout << "\nNOVO VALOR DO SEGURO (R$): " << valor_seguro - (valor_seguro * (descontos[chave_desconto][0] / 100)); break;
    case 5 ... 9:
      cout << "DESCONTO (%) : " << descontos[chave_desconto][1];
      cout << "\nDESCONTO APLICADO (- R$): " << valor_seguro * (descontos[chave_desconto][1] / 100);
      cout << "\nNOVO VALOR DO SEGURO (R$): " << valor_seguro - (valor_seguro * (descontos[chave_desconto][1] / 100)); break;
    case 10 ... 15:
      cout << "DESCONTO (%) : " << descontos[chave_desconto][2];
      cout << "\nDESCONTO APLICADO (- R$): " << valor_seguro * (descontos[chave_desconto][2] / 100);
      cout << "\nNOVO VALOR DO SEGURO (R$): " << valor_seguro - (valor_seguro * (descontos[chave_desconto][2] / 100)); break;
    case 16 ... 30:
      cout << "DESCONTO (%) : " << descontos[chave_desconto][3];
      cout << "\nDESCONTO APLICADO (- R$): " << valor_seguro * (descontos[chave_desconto][3] / 100);
      cout << "\nNOVO VALOR DO SEGURO (R$): " << valor_seguro - (valor_seguro * (descontos[chave_desconto][3] / 100)); break;
    default:
      cout << "[!] VALOR INVALIDO - TENTE NOVAMENTE!";
      exit (1);
  }

  return 0;
}
