#include <iostream>

using namespace std;

int main() {
  int d;
  int r;
    
  cin >> d;

  if (d <= 800) {
    r = 1;
  } else if (d <= 1400) {
    r = 2;
  } else {
    r = 3;
  }
    
  cout << r;
    
  return 0;
}
