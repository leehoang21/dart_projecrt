//liet ke
void LietKe(int n) {
  String st = '';
  var a = <int>[];
  int k = 2;
  for (int i = 1; i <= n - k + 1; i++) {
    for (int j = 0; j < k; j++) {
      a.add(i + j);
    }
    if (k < n) k++;
  }
  print(a);
}

void main(List<String> args) {
  LietKe(3);
}
