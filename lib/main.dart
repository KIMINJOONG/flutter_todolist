import 'package:flutter/material.dart';
import 'package:flutter_app_to_do_list/bloc/todo_provider.dart';
import 'package:flutter_app_to_do_list/todolist.dart';
import 'package:flutter_app_to_do_list/write.dart';

void main() => runApp(TodoProvider(child: MyApp(),));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TodoList(),
      routes: <String, WidgetBuilder> {
        "/write": (context) => Write()
      }
    );
  }
}


