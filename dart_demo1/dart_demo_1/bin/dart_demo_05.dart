void main(List<String> args) {
  Dog dog1 = Dog();
  start(dog1);

  //런타임시점 동적 바인딩
  start(Cat()); // 메모리에 객체가 올라간 Cat의 sound메서드가 호출되었다.
  start(Fish());
} // end of main

abstract class Animal {
  void sound();
}

class Dog implements Animal {
  @override
  void sound() {
    print("멍멍");
  }
}

class Cat implements Animal {
  @override
  void sound() {
    print("야옹");
  }
}

class Fish implements Animal {
  @override
  void sound() {
    print("뻐끔뻐끔");
  }
}

void start(Animal x) {
  x.sound();
}
