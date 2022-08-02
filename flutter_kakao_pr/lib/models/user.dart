class User {
  final String backgroundImage;
  final String name;
  final String intro;

  User(
      {this.backgroundImage =
          "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger_me_1.jpg",
      required this.name,
      required this.intro});
} // end of user class

final String _urlPrefix =
    "https://raw.githubusercontent.com/flutter-coder/ui_images/master/messenger";

// 샘플(나)
User me = User(
    backgroundImage: "${_urlPrefix}_me.jpg",
    name: "김철수",
    intro: "고통없이는 얻는 것도 없다.");

List<User> friends = [
  User(backgroundImage: "${_urlPrefix}_main_1.jpg", name: "홍길동", intro: "아버지"),
  User(backgroundImage: "${_urlPrefix}_main_1.jpg", name: "홍길동", intro: "아버지"),
  User(backgroundImage: "${_urlPrefix}_main_1.jpg", name: "홍길동", intro: "아버지"),
  User(backgroundImage: "${_urlPrefix}_main_1.jpg", name: "홍길동", intro: "아버지"),
  User(backgroundImage: "${_urlPrefix}_main_1.jpg", name: "홍길동", intro: "아버지"),
  User(backgroundImage: "${_urlPrefix}_main_1.jpg", name: "홍길동", intro: "아버지"),
  User(backgroundImage: "${_urlPrefix}_main_1.jpg", name: "홍길동", intro: "아버지"),
  User(backgroundImage: "${_urlPrefix}_main_1.jpg", name: "홍길동", intro: "아버지"),
  User(backgroundImage: "${_urlPrefix}_main_1.jpg", name: "홍길동", intro: "아버지"),
  User(backgroundImage: "${_urlPrefix}_main_1.jpg", name: "홍길동", intro: "아버지"),
];
