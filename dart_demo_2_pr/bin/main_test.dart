String? description;
String? description2 = null;

void main(List<String> args) {
  print(result);
}

var count = 0;
fibonacci(int n) {
  print(count);
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

var result = fibonacci(10);
