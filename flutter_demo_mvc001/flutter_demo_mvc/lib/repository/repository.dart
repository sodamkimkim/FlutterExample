import '../models/todo.dart';

abstract class Repository {
  Future<List<Todo>> getTodoList();
  Future<String> putCompleted(Todo todo);
  Future<String> deletedTodo(Todo todo);
  Future<String> postTodo(Todo todo);
  Future<String> patchCompleted(Todo todo);

// json placeholder에서
  //albums
  // comments
  // 등 한 파일에서 모든 것 관리 하는 게 좋음
}
