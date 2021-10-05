int fibonacci(int n) {
  if (n < 0) {
    return -1;
  } else if (n == 0 || n == 1) {
    return n;
  } else {
    return fibonacci(n - 1) + fibonacci(n - 2);
  }
}

void main(List<String> args) {
  String st = '';
  for (int i = 0; i < 10; i++) {
    st += ' ${fibonacci(i)}';
  }
  print(st);
}
