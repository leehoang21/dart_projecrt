void BubbleSort(List a) {
  int k = a.length - 1, t = 0;
  while (k > 0) {
    for (int j = 0; j < k; j++) {
      if (a[j] > a[j + 1]) {
        int tmp = a[j];
        a[j] = a[j + 1];
        a[j + 1] = tmp;
        t = j;
      }
    }
    k = t;
  }
}

void main(List<String> arguments) {
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
  BubbleSort(a);
  print(a);
}
