class Album {
  int userId;
  int id;
  String title;

  Album(this.userId, this.id, this.title); //생성자

  // factory 패턴은 아님
  // # factory타입.
  // - 싱글톤 패턴. 즉, 한번 생성된 객체를 재활용하기 위해 사용한다.
  // 매개변수 map을 사용하여 dart object인 Album Object로 변환하는 코드
  factory Album.fromJson(Map<String, dynamic> json) {
    // 이름이 있는 생성자로 객체를 메모리에 올릴 것임.
    return Album(json['userId'], json['id'], json['title']);
  }
}
