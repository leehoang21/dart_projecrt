void main(List<String> args) {
  //for
  for (int i = 0; i < 4; i++) {
    print(i);
  }
  print(' ');
  //for each
  var arr = [1, 2, 3, 4];
  for (int i = 0; i < arr.length; i++) {
    arr[i] = 4;
  }
  for (int i in arr) {
    print(i);
  }
}
