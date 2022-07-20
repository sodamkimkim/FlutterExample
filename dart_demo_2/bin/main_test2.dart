void main(List<String> args) {}

class Spacecraft {
  String name;
  DateTime? launchDate;
  // String? name에서 ?빼도 된다.
  // 왜냐하면 생성자에서 name이 선택적 생성자가 아니라서 데이터가 들어올거라는 보장이 있기 때문
  // 근데 DateTime? lauchDate는 안된다.
  // 왜냐하면 Spacecraft.unlaunched(String name) : this(name, null);이거 때문. 이거 없애면 된다.

  // # get
  // DateTime안의 year뽑기
  // DateTime? nullable이기 때문에 여기 int와 launchDate에서도 null-safety연산자 적어준다.
  // nullable 형식이 있는 변수는 초기화 되지 않은 변수이고, 초기값은 null이다.
  // 모든 변수에는 nullable유형이 있다. 심지어 숫자도 nullable.
  // 이것이 가능한 이유는.. Dart에서는 변수로 지정할 수 있는 모든 것들은 객체이기 때문이다.
  int? get launchYear => launchDate?.year;

  // # 기본생성자
  Spacecraft(this.name, this.launchDate) {}

  // # 명명된 생성자(이름이 있는 생성자)
  Spacecraft.unlaunched(String name) : this(name, null);
  // 이 클래스의 객체를 생성할 때, 기본생성자할 수도 있고,
  // 명명된생성자 사용으로 name값만으로 생성할 수도 있다.

}
