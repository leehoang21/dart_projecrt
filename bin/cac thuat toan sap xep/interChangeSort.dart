void InterChangeSort(List a) {
  int k = 0, x = 0;
  for (int i = 0; i < a.length - 1; i++) {
    k = i;
    for (int j = i + 1; j < a.length; j++) {
      if (a[j] > a[k]) {
        k = j;
      }
    }
    int tmp = a[i];
    a[i] = a[k];
    a[k] = tmp;
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
  InterChangeSort(a);
  print(a);
}
