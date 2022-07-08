import 'dart:math';

void main(List<String> args) {
  var list = [1, 2, 3];
  var newList1 = list; // 얕은 복사 (주소 복사)
  var newList2 = [...list]; // 깊은 복사 (값 복사)

  print(list);
  print(newList1);
  print(newList2);
  print("---");
  newList1[0] = 500;
  newList2[0] = 1000;
  print(list);
  print(newList1);
  print(newList2);
} // end of main
