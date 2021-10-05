import 'dart:io';
import 'dart:math';

//la so nguyen to
bool IsSoNT(int so) {
  for (int i = 2; i < so; i++) {
    if (so % i == 0) return false;
  }
  return true;
}

void main(List<String> args) {
  String st = ' ';
  int so = 28, i = 2;
  while (so > 1) {
    if (IsSoNT(i)) {
      if (so % i == 0) {
        so ~/= i;
        st += '$i';
        if (so > 1) st += '.';
      } else {
        i++;
      }
    } else {
      i++;
    }
  }
  print(st);
}
