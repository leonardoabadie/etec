    #include <iostream>

    using namespace std;

    int main(){
        int opcao;
         
        cout << "BEM VINDO AO SANDUBEIRO RESTAURANTE!\n";
        cout << "CARDÁPIO (OPÇÕES DISPONÍVEIS):\n" <<
        "1- Big Super Sanduba\n" <<
        "2 - Quase Super Sanduba\n" <<
        "3 - Mirradus Sanduba\n\n";

        cout << "[*] Escolha uma opção (para mais detalhes da promoção): ";
        cin >> opcao;

        cout << "\n";
       switch (opcao) {
            case 1:
                cout << "BIG SUPER SANDUBA - ESPECIFICAÇÃO:\n" <<
                "* 2 hambúrgueres\n" <<
                "* queijo\n" <<
                "* batatas fritas\n" <<
                "* 1 refrigerante\n" <<
                "PREÇO (R$): 5,00";
                break;
            case 2:
                cout << "QUASE SUPER SANDUBA - ESPECIFICAÇÃO:\n" <<
                "* 1 hambúrguer\n" <<
                "* batatas fritas\n" << 
                "* 1 refrigerante\n" <<
                "PREÇO (R$): 3,00";
                break;
            case 3:
                cout << "MIRRADUS SANDUBA - ESPECIFICAÇÃO:\n" <<
                "* 1 misto quente\n" <<
                "* 1 refrigerante\n" <<
                "PREÇO (R$): 1,50"; 
                break;
            default: 
                cout << "OPÇÃO INCORRETA - TENTE NOVAMENTE!";
        }
     
        return 0;
    }
