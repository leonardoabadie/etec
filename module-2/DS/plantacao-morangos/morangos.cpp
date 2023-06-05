#include <iostream>

using namespace std;

int main()
{
  int c1, c2, l1, l2, a1, a2;
  
  cin >> c1;
  cin >> l1;
  cin >> c2;
  cin >> l2;
  
  a1 = c1 * l1;
  a2 = c2 * l2;
  
  if (a1 >= a2) {
    cout << a1;
  } else {
    cout << a2;
  }

  return 0;
}
