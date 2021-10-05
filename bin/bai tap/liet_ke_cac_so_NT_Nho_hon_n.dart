//kiem tra xem co phai so NT ko
import 'dart:io';

bool IsSoNT(int so) {
  if (so < 2) return false;
  for (int i = 2; i < so; i++) {
    if (so % i == 0) return false;
  }
  return true;
}

//liet ke
void LietKeSoNT(int n) {
  String st = '';
  for (int i = 2; i < n; i++) {
    if (IsSoNT(i)) st += '$i ';
  }
  print(st);
}

void main(List<String> args) {
  print('moi ban nhap so n');
  dynamic n = stdin.readLineSync();
  n = int.parse(n);
  LietKeSoNT(n);
}
