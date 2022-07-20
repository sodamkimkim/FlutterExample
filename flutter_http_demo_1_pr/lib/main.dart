import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_http_demo_1_pr/post.dart';
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
      title: 'http연습',
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
  late Future<Post> futurePost;
  @override
  void initState() {
    futurePost = fetchPost();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("http lib ex"),
      ),
      body: Center(
        child: FutureBuilder<Post>(
          future: futurePost,
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(snapshot.data!.title),
                  SizedBox(
                    height: 20,
                  ),
                  Text(snapshot.data!.body)
                ],
              );
            } else if (snapshot.hasError) {
              return Text("${snapshot.error}");
            }
            return const CircularProgressIndicator();
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
      return 100;
    },
  );
}

Future<Post> fetchPost() async {
  // # http fetch??
  // 수정할 땐 put으로 쓰는데,, fetch는 일부 컬럼만 수정할 때 사용
  // ex) user table에서 title column만 수정하고 싶을 때 사용.

  Uri uri = Uri.parse("https://jsonplaceholder.typicode.com/posts/1");
  final response = await http.get(uri);
  if (response.statusCode == 200) {
    return Post.fromJson(jsonDecode(response.body));
  } else {
    throw Exception("Failed to load post");
  }

  print(response.runtimeType);
  print(response.statusCode);
}
