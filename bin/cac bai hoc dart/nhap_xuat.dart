import 'dart:io';

void main(List<String> args) {
  //xuat ko xuong dong
  stdout.write('nhap a');
  //nhập
  //nhap so nguyen
  int name = int.parse(stdin.readLineSync()!);

  //stdin.readLineSync(); la nhap 1 string
  print(name.runtimeType);
  print('my name : $name');

  //Đổi chuỗi thành số nguyên
  int numint = int.parse("120");
  //Đổi chuỗi thành số thực
  var abc = double.parse("123.123");
  //Trên các đối tượng số này có các phương thức để chuyển đổi kiểu
  //toString(), toInt(), toDouble()
  double a = 10.10;
  int b = a.toInt();
  String c = (a + b).toString();
}
