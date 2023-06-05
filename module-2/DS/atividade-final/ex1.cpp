#include <iostream>

using namespace std;
int main(){
    
    int nota;
    
    cout << "Entre com a nota do aluno: ";
    cin >> nota;
    
    switch (nota){
        case 0 ... 3:
            cout << "Reprovado";
            break;
        case 4 ... 5:
            cout << "Recuperação";
            break;
        case 6 ... 10:
            cout << "Aprovado";
            break;
        default:
            cout << "Nota inválida";            
    }
    return 0;
}

