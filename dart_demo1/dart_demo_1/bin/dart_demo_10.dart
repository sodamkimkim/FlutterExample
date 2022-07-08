import 'dart:math';

void main(List<String> args) {
  var chobab = ["새우초밥", "광어초밥", "연어초밥"];
  // map함수는 무언가를 변형(변경, 가공)을 해야 할 때, 사용하면 굉장히 편리.
  var chobabChange = chobab.map((e) => "간장_ $e").toList();
  print(chobabChange);
  print(chobabChange.runtimeType);
  print("-----------");
  print(chobab);
} // end of main
