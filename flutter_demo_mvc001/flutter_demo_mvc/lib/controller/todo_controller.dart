import '../models/todo.dart';
import '../repository/repository.dart';

class TodoController {
  //다형성 활용
  final Repository _repository;
  TodoController(this._repository);

// get Todo list
  Future<List<Todo>> fetchTodoList() async {
    return _repository.getTodoList();
  }

  Future<String> updatePatchCompleted(Todo todo) async {
    return _repository.patchCompleted(todo);
  }

  Future<String> updatePutCompleted(Todo todo) async {
    return _repository.putCompleted(todo);
  }
}
