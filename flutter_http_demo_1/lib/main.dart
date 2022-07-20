import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Album.dart';
// 라이브러리여러개 가져올때, 라이브러리에 같은 이름의 객체가 존재할 수 있기 떄문에
// 따로 이름을 가공해서 사용할 수 있다.

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
  // 네트워크 통신을 받은 다음 오브젝트에 저장하고 싶으면 다음과 같은 작업 수행.

  late Future<Album> futureAlbum;

  @override
  void initState() {
    //단한번만 실행될 것들 여기에 넣는다.

    // future타입, 원형으로 작성하기
    // fetchAlbum().then((data) => {
    //       print("id: ${data.id}"),
    //       print("userId: ${data.userId}"),
    //       print("title: ${data.title}"),
    //     });
    futureAlbum = fetchAlbum();
    //
    // statefullwidget의 initState
    // build가 호출되면서, 매번 네트워크로 던진다.
    // 이런 fetchAlbum(통신연결)는 initState에 작성해주는게 좋다.
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("http lib ex"),
      ),
      body: Center(
        // future타입은 futureAlbum이라고 지정.
        child: FutureBuilder<Album>(
          future: futureAlbum,
          builder: (context, snapshot) {
            //builder는 결국 위젯을 리턴하는 녀석
            if (snapshot.hasData) {
              return Text(snapshot.data!.title);
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }

            return const CircularProgressIndicator(); // 화면에서 새로고침하면 서버에서 데이터 받을 동안 돌아가는 인디케이터 표시
          },
        ),
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
  // # http fetch??
  // 수정할 땐 put으로 쓰는데,, fetch는 일부 컬럼만 수정할 때 사용
  // ex) user table에서 title column만 수정하고 싶을 때 사용.

  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/albums/1");
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    // 문자열로 받는데, json형식으로 넘어올 것임.
    // jsonholder fakeserver에서 json으로 넘겨주고 있으니까.
    // object로 변환시켜서 사용
    //album이라는 object, userId같은게 key.
    return Album.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to load album");
  }
  print(response.runtimeType);
  print(response.statusCode);
}
