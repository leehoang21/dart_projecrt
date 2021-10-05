class staticClass {
  //static dc dùng ở cấp độ class
  static int a = 3;
  late int b;
  factory staticClass(int c) {
    if (c == 1) return staticClass.b1();
    return staticClass.b2();
  }
  staticClass.b1() {
    print('b = 1 ');
  }
  staticClass.b2() {
    print('b = 2');
  }
  static void display() {
    print('ddff');
  }
}
