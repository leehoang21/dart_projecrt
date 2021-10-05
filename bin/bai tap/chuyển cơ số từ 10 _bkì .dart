import 'dart:io';
import 'dart:typed_data';

//chuyen
int chuyen(int SoCS_10, int heCoSo) {
  var SoCS_bki = 0, j = 1;
  while (SoCS_10 != 0) {
    SoCS_bki += j * (SoCS_10 % heCoSo);
    SoCS_10 ~/= heCoSo;
    j *= 10;
  }
  return SoCS_bki;
}

void main(List<String> args) {
  //nhập số
  bool check = false;
  dynamic heCoSo, SoCS_10;
  while (!check) {
    try {
      print('moi ban nhap he co so muon chuyen va so tu nhien o co so 10');
      heCoSo = stdin.readLineSync();
      SoCS_10 = stdin.readLineSync();
      heCoSo = int.parse(heCoSo);
      SoCS_10 = int.parse(SoCS_10);
      check = true;
    } catch (e) {
      print('ban phai nhap so tu nhien');
    }
  }
  //in so
  int SoCS_bki = chuyen(SoCS_10, heCoSo);
  print('so co so 10 -> $heCoSo = ');
  print(SoCS_bki);
}
