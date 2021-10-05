void ShakerSort(List a) {
  int Left = 0;
  int Right = a.length - 1;
  int k = 0;
  while (Left < Right) {
    for (int i = Left; i < Right; i++) {
      if (a[i] > a[i + 1]) {
        int tmp = a[i];
        a[i] = a[i + 1];
        a[i + 1] = tmp;
        k = i;
      }
    }
    Right = k;
    for (int i = Right; i > Left; i--) {
      if (a[i] < a[i - 1]) {
        int tmp = a[i];
        a[i] = a[i - 1];
        a[i - 1] = tmp;
        k = i;
      }
    }
    Left = k;
  }
}

void main(List<String> args) {
  List a = <int>[];
  a.add(7);
  a.add(3);
  a.add(5);
  a.add(2);
  a.add(6);
  a.add(1);
  a.add(8);
  a.add(4);
  a.add(9);
  ShakerSort(a);
  print(a);
}
