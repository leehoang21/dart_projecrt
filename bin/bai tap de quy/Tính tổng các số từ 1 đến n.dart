//tinh tong
int TinhTong(int n) {
  if (n < 1) return 0;
  return n + TinhTong(n - 1);
}

int main(List<String> args) {
  int a = TinhTong(5);
  print(a);
  return 0;
}
