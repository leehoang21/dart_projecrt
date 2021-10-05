//sap xep chen
void InserttionSort(List a) {
  int x = 0, t = 0;
  for (int i = 1; i < a.length; i++) {
    x = a[i];
    t = i - 1;
    while (t >= 0 && x < a[t]) {
      a[t + 1] = a[t];
      t--;
    }
    a[t + 1] = x;
  }
}

//cai tien cua inserttion sort
void ShellSort(List a, [int h = 2]) {
  int x = 0, t = 0;
  for (int kc = a.length ~/ h; kc > 0; kc ~/= h) {
    for (int j = kc; j < a.length; j++) {
      x = a[j];
      t = j - kc;
      while (t >= 0 && x < a[t]) {
        a[t + kc] = a[t];
        t -= kc;
      }
      a[t + kc] = x;
    }
  }
}

void main(List<String> args) {
  List a = <int>[];
  for (int i = 20; i > 0; i--) {
    a.add(i);
  }
  //InserttionSort(a);
  ShellSort(a);
  print(a);
}
