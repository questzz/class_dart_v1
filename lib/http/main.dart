import 'package:flutter_v1/future/main7.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

// 동기적 방식으로 소화
void main() async {
  // 헤더
  Map<String, String> header = {};
  // 바디
  Todo? todo;
  var res = await fetchTodo(); // 미완료, 완료 - data, error

  if (res.statusCode == 200) {
    print("통신 성공");
    print(res.headers.runtimeType); // 반드시 암기
    print(res.body.runtimeType); // 반드시 암기
    header = res.headers;
    // String --> Map --> Todo
    Map<String, dynamic> httpBody = json.decode(res.body); // String -> map 파싱
    print(httpBody.toString());
    print(httpBody["title"]);
    print(httpBody["aaaa"]);
    // Map ---> Todo 클래스 타입
    todo = Todo.fromJson(httpBody);
  } else {
    print("통신 실패");
  }

  print("------------------");
  print(todo?.toString());
  print(todo?.title);
  print(todo?.id);
  print(todo?.completed);
}

class Todo {
  final int userId;
  final int id;
  final String title;
  final bool completed;
  // [ ]
  // { } <-- 명명된 파리미터
  Todo(
      {required this.userId,
      required this.id,
      required this.title,
      required this.completed});

  Todo.fromJson(Map<String, dynamic> map)
      : userId = map["userId"],
        id = map["id"],
        title = map["title"],
        completed = map["completed"];

  @override
  String toString() {
    return "userId : $userId , id: $id, title: $title, completed : $completed";
  }
}

Future<http.Response> fetchTodo() async {
  const url = "https://jsonplaceholder.typicode.com/todos/1";
  final response = await http.get(Uri.parse(url));
  return response;
}
