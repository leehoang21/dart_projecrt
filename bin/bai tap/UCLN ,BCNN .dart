// ucln
import 'dart:io';

import 'package:test/expect.dart';

int UCLN(int a, int b) {
  for (int i = a > b ? b : a; i > 1; i--) {
    if (a % i == 0 && b % i == 0) return i;
  }
  return 1;
}

//bcnn
int BCNN(int a, int b) {
  if (a > b) {
    b = b ~/ UCLN(a, b);
    return a * b;
  } else {
    a = a ~/ UCLN(a, b);
    return a * b;
  }
}

void main(List<String> args) {
  var b, a;
  a = stdin.readLineSync();
  a = int.tryParse(a);
  b = stdin.readLineSync();
  b = int.tryParse(b);
  print('UCLN = ${UCLN(a, b)}');
  print('BCNN = ${BCNN(a, b)}');
}
