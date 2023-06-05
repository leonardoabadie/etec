#include <iostream>
    
using namespace std;

int main() {
    int num;
    
    cout << "Entre um valor de 1 a 5: ";
    cin >> num;
    
    switch (num) {
        case 1: 
            cout << "Mau";
            break;
        case 2: 
            cout << "Medíocre";
            break;
        case 3: 
            cout << "Suficiente";
            break;
        case 4: 
            cout << "Bom";
            break;
        case 5: 
            cout << "Excelente";
            break;
        default :
            cout << "Valor incorreto";
            break;
    }
    return 0;
}
