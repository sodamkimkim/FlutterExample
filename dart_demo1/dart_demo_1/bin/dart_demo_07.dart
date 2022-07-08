void main(List<String> args) {
  Map<String, dynamic> user = {
    // 맵계열은 {}, 리스트는 []
    "id": 10,
    "username": "cos"
  };
  //여기서 사용한 []는 Map의 key. 리스트 아님
  print(user["id"]);
  print(user["username"]);
  print(user["age"]); //없는 값 입력해봄
}
