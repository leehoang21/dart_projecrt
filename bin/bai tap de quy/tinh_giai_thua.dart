int GiaiThua(int n) {
  if (n <= 1) return 1;
  return n * GiaiThua(n - 1);
}

void main(List<String> args) {
  print(GiaiThua(10));
}
