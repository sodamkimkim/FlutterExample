import 'main_test2.dart';

void main(List<String> args) {
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  // java컬랙션 프레임워크 사용시..
  // map, fliter

  //데이터를 메모리단에서 사용할때,, where은 찾는 것... element안에 저 []안의 데이터들이 차례로 넘어옴
  // 익명함수를 인수로 전달할 때 유용한 방법.
  flybyObjects.where((name) => name.contains('turn')).forEach(print);

  printWithDelay2("비동기 함수 실행했습니다."); //delay때문에 5초뒤에 찍힘
}

// # Enums
enum planetType { terrestial, gas, ice }

// # 상속
class Orbiter extends Spacecraft {
  double altitude;
  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

// # 비동기 Async
// - 콜백 지옥을 피하고 async 및 await를 사용할 수 있다.
// => 훨씬 코드를 쉽게 만들 수 있다.
// 인위적으로 기다리기 위해서 Duration사용했다.
const oneSecond = Duration(seconds: 5);
// # Future타입(비동기에 활용)
// - 미래타입.. 규칙이 있다.
// - 비동기를 써야 하는 타입임 (async 키워드 써야함)
// - 주로 네트워크 통신에 사용. 응답받는 데에 얼마나 시간이 걸릴지 모르니까.
// 방법1
Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond); // await : 기다린다.
  // await에서 기다렸다가 그 다음거 진행.
  // 그 다음거는 저거 수행할 떄까지  기다리고 있다.
  print(message);
}

// 방법2
Future<void> printWithDelay2(String message) {
  return Future.delayed(oneSecond).then(
    (_) => {print(message)},
  );
}
