import 'dart:ffi';

import 'dart:html';

void main(List<String> args) {
  //có 2 cách truyền tham số vào hàm ẩn danh

  //cách 1
  int a = (int b, int c) {
    return b + c;
  }(2, 5);
  print(a);

  //cách 2
  var d = (int b, int c) {
    return b + c;
  };
  print(d(2, 3));
}
