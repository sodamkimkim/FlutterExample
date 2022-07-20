void main(List<String> args) {
  var name = "Voyage I";
  var year = 1977;
  var antennaDimeter = 3.7;
  var flybyObjects = ['Jupeter', 'Saturn', 'Uranus'];
  var image = <String, dynamic>{
    // 맵구조, 키 밸류
    "tags": ['saturn', 'abc'],
    "url": '//path/to/saturn.jpg'
  };
  print(image);
  print(image['tags']);
  print(image['tags'].runtimeType);
  List<String> tagsList = image['tags'] as List<String>; // as: 캐스팅
  print(tagsList);
  print(tagsList[0]);
  print(tagsList[1]);

  try {
    print(tagsList[2]);
  } catch (e) {
    print("예외발생");
  }
  /**
   * # Map타입은 {}중괄호를 사용한다.
   * - key : value, key: value
   * - Map은 key - value pair방식이다.
   * 
   * # List는 []대괄호 사용.
   */
  description = 'Feijoada!';
  print(description);
}

// late는 선언 후 초기화되는 null이 아닌 변수 선언.
// 변수를 느리게 초기화.
// late String description에서 late지우면 오류난다. 값을 초기화해야하기 때문
late String description;
