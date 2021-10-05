import 'dart:io';

//ham tinh tong cac chu so
int TongChuSo(int so) {
  int num = 0;
  while (so != 0) {
    num += so % 10;
    so ~/= 10;
  }
  return num;
}

void main(List<String> args) {
  //nhap
  var so;
  print('moi ban nhap so');
  so = stdin.readLineSync();
  so = int.parse(so);
  //tinh tong cac chu so
  int num = TongChuSo(so);
  print('tong = $num');
}
