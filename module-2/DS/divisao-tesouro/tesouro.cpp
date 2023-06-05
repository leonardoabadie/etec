#include <iostream>

using namespace std;

int main() {
  int a, n, r, tmp;
  int i = 1;

  cin >> a;
  cin >> n;

  while (true) {
    tmp = ((n * i) / n) * 2;
    if ((n * i) + tmp == a) {
      cout << tmp;
      break;
    }
      
    i++;
  }

  return 0;
}
