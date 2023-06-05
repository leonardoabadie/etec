#include <iostream>

using namespace std;

int main() {
  int a, b, c, d;

  cin >> a;
  cin >> b;
  cin >> c;
  cin >> d;

  if ((a == (b+c+d)) && (d == (b+c)) && (b == c)) {
    cout << "Têm equilíbrio";
  } else {
    cout << "Não têm equilíbrio!";
  }

  return 0;
}
