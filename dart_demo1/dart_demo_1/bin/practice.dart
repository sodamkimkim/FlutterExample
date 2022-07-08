void main(List<String> args) {
  CheeseBurger ch = CheeseBurger("치즈버거");
  print(ch.name);
}

class Burger {
  final String? name;
  Burger(this.name) {}
}

class CheeseBurger extends Burger {
  CheeseBurger(String name) : super(name);
}
