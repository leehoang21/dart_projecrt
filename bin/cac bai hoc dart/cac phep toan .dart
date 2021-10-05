void main(List<String> args) {
  bool a = true;
  bool b = false;
  print(a | b); //phép toán a or b
  print(a & b); //phép toán a and b
  print(!a); //phép toán not a(ko phải là a)
  //  |  a    |  b     |or      |and
  //  |true   |true    | true  | true
  //  |true   |false   | true   | false
  //  |false  | true   | true   | false
  //  |false  |false   | false  | false

  // a    | not a
  // true | false
  // false | true
}
