void SelectionSort(List a) {
  for (int i = 0; i < a.length - 1; i++) {
    int x = i;
    for (int j = i + 1; j < a.length; j++) {
      if (a[x] > a[j]) {
        x = j;
      }
    }
    int tmp = a[i];
    a[i] = a[x];
    a[x] = tmp;
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
  SelectionSort(a);
  print(a);
}
