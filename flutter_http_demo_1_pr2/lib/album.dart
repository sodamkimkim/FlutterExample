class Album {
  int userId;
  int id;
  String title;

  Album(this.userId, this.id, this.title);
  // factory타입
  // 매개변수 map을 사용하여 dart object인 Album object로 변환하는 코드
  factory Album.fromJson(Map<String, dynamic> json) {
    // 이름이 있는 생성자로 객체를 메모리에 올릴 것임.
    return Album(json['userId'], json['id'], json['title']);
  }
}
