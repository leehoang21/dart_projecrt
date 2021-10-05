void BubbleSort(List a) {
  for (int i = 0; i < a.length - 2; i++) {
    bool CoSX = false;
    for (int j = 0; j < a.length - i - 1; j++) {
      if (a[j + 1] < a[j]) {
        int tmp = a[j];
        a[j] = a[j + 1];
        a[j + 1] = tmp;
        CoSX = true;
      }
    }
    if (!CoSX) break;
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
