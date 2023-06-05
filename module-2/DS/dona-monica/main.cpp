#include <iostream>

using namespace std;

int main () {
  int a, b, c, m;

  cin >> m;
  cin >> a;
  cin >> b;
    
  c = m - (a + b);
  cout << max(max(a, b), max(b, c)); // um pouco redundante...

  return 0;
}
