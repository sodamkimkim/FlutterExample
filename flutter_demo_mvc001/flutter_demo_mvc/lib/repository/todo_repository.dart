import 'dart:convert'; // json으로 data convert해줌

import 'package:flutter_demo_mvc/models/todo.dart';
import 'package:flutter_demo_mvc/repository/repository.dart';
import 'package:http/http.dart' as http;

class TodoRepository implements Repository {
  String dataURL = "https://jsonplaceholder.typicode.com";
  @override
  Future<String> deletedTodo(Todo todo) {
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getTodoList() async {
    List<Todo> todoList = [];
    var url = Uri.parse('$dataURL/todos');
    var response = await http.get(url);
    print("status code:  + ${response.statusCode}");
    print("response.body: ${response.body}");

    var body = json.decode(response.body);
    print("body: ${body}");
    //파싱 처리 해야 함.
    for (var i = 0; i < body.length; i++) {
      todoList.add(Todo.fromJson(body[i]));
    }
    return todoList;
  }

  //Rest Api
  // get, delete -> body x
  //post, put, patch -> body o
  @override
  Future<String> patchCompleted(Todo todo) async {
    // .../todos/10
    var uri = Uri.parse('${dataURL}/todos/${todo.id}');
    String resData = '';
    await http.patch(uri,
        body: {'completed': (todo.completed!).toString()}).then((response) {
      print("response: ${response.body}");
      Map<String, dynamic> result = json.decode(response.body);

      return resData = result['completed'];
    });
    return resData;
  }

  @override
  Future<String> postTodo(Todo todo) {
    // TODO: implement postTodo
    throw UnimplementedError();
  }

  @override
  Future<String> putCompleted(Todo todo) async {
    var uri = Uri.parse('${dataURL}/todos/${todo.id}');
    String resData = '';
    await http.put(uri, body: {'completed': (todo.completed!).toString()}).then(
        (response) {
      print("response: ${response.body}");
      Map<String, dynamic> result = json.decode(response.body);
      return resData = result['completed'];
    });
    return resData;
  }
}
