import 'package:flutter/material.dart';
import 'package:passing_data/models/todo.dart';

void main() {
  runApp(
    MaterialApp(
      title: "Passing data",
      home:  TodosScreen(
        todos: List.generate(
          25, 
          (index) => Todo('Todo $index', 'A description of what needs to be done for Todo $index')
        ),
      ),
    )
  );
}

class TodosScreen extends StatelessWidget {
  final List<Todo> todos;

  //requiring the list of todos
  TodosScreen({Key key, @required this.todos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Todos'),
      ),
      //passing in the ListView.builder
      body: ListView.builder(
        itemCount: todos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(todos[index].title)
          );
        },
      ),
    );
  }
}
