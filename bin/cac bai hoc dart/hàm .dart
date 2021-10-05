// tham số tuỳ chọn theo vị trí
// có thể truyền vào tham số tuỳ chọn hoặc ko
int tinhTong(int a, [int c = 5]) {
  var tong = a;
  if (c != null) {
    tong = tong + c;
  }
  return tong;
}

// tham số tuỳ chọn theo tên
// có thể truyền vào tham số tuỳ chọn hoặc ko
int Tong(int a, {int c = 5}) {
  var tong = a;
  if (c != null) {
    tong = tong + c;
  }
  return tong;
}

//cả 2 tham só tuỳ chọn đều cỏ thể có tham só tuỳ chọn là null
int tong(int a, [int? c]) {
  var tong = a;
  if (c != null) {
    tong = tong + c;
  }
  return tong;
}

void main(List<String> args) {
  int x = tinhTong(2);
  int y = Tong(2, c: 4);
  int z = tong(2);
  print('tingTong = $x');
  print('Tong     = $y');
  print('tong     = $z');
}
