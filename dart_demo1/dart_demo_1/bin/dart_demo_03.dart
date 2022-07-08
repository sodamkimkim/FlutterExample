void main(List<String> args) {
  CheeseBurger ch = CheeseBurger("치즈버거");
  print(ch.name);
} // end of main

class Burger {
  final String? name;
  Burger(this.name) {} // final변수는 반드시 초기화가 보장되어야 하기 때문에 
  //생성자에 매개변수를 넣어줘야 하고
  // 자식에게도 이니셜라이저 써야함
}

class CheeseBurger extends Burger {
  //매개변수의 이름과 부모클래스의 변수이름이 같아야 매핑된다.
  CheeseBurger(String name) : super(name);
}
