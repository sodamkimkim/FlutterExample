import 'package:dart_demo_1/dart_demo_1.dart' as dart_demo_1;

void main(List<String> arguments) {
  Person p1 = Person(name: "홍길동"); //선택적 매개변수 쓰면 키값명시해줘야 함
  Person p2 = Person(name: "임꺽정", money: 1000);
  Person p3 = Person(name: "유관순", money: 10000);

  print("${p1.name} 의 재산은 ${p1.money}");
  print("${p2.name}의 재산은 ${p2.money}");
  print("${p3.name}의 재산은 ${p3.money}");
}

class Person {
  String name; // String 뒤에 ? 적으면 nullable
  int money;
  Person(
      {required this.name, this.money = 1000}); // this.name 앞에 required붙일 수도있다.
}

class Chef {
  String name;
  Chef(this.name);

  void cook() {
    print("요리를 시작합니다.");
  }
}
