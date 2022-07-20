import 'dart:convert';

import 'package:flutter/material.dart';
import 'album.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'http 연습',
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // 네트워크 통신을 받은 다음, 오브젝트에 저장하고 싶으면 다음과 같은 작업 수행.
  late Future<Album> futureAlbum;

  @override
  void initState() {
    /**
   * 단 한번만 실행될 것들을 여기 넣는다.
   * future타입, 원형으로 작성하기
    fetchAlbum().then(
      (data) => {
        print("id : ${data.id}"),
        print("userId : ${data.userId}"),
        print("title : ${data.title}"),
      },
    );
   */
    futureAlbum = fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("http lib ex"),
      ),
      body: FutureBuilder<Album>(
        future: futureAlbum,
        builder: (context, snapshot) {
          // builder는 결국 위젯을 리턴하는 녀석.
          if (snapshot.hasData) {
            return Text(snapshot.data!.title);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return const CircularProgressIndicator();
        },
      ),
    );
  }
}

Future<int> futureNumber() async {
  return Future.delayed(
    const Duration(seconds: 3),
    () {
      // 3초가 끝나면 리턴
      return 100;
    },
  );
}

Future<Album> fetchAlbum() async {
  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/albums/1");
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    // 문자열로 받는데, json형식으로 넘어올 것임.
    // jsonholder fakeserver에서 json으로 넘겨주고 있으니까.
    // object로 변환시켜서 사용
    // album이라는 object, userId같은게 key.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to load album");
  }
  print(response.runtimeType);
  print(response.statusCode);
}
