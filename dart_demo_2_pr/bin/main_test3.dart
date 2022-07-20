import 'main_test2.dart';

import 'main_test2.dart';

void main(List<String> args) {
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  flybyObjects.where((name) => name.contains('turn')).forEach(print);
}

// #Enum
enum planetType { a, b, c }

// #상속
class Orbiter extends Spacecraft {
  double altitude;
  Orbiter(super.name, DateTime super.launchDate, this.altitude);
}

const oneSecond = Duration(seconds: 5);
Future<void> printWithDelay(String message) async {
  await Future.delayed(oneSecond);
  print(message);
}

Future<void> printWithDelay2(String message) {
  return Future.delayed(oneSecond).then(
    (_) => {print(message)},
  );
}
