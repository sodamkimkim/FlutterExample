String? description1; // 가능
// String description1; // 불가능
// String description2 = null; //불가능
String? description2 = null;
// null safety가 적용되어있기 때문에  = null은 에러나지만,
// ?로 nullable명시해주면 null로 초기화 가능하다.

void main(List<String> args) {
  print("11111");
  print(result);
}

var count = 0;
fibonacci(int n) {
  print(count);
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

var result = fibonacci(10);
