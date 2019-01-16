import 'package:flutter/material.dart';
import 'package:flutter_app_to_do_list/bloc/todo_bloc.dart';

class TodoProvider extends InheritedWidget {
  TodoBloc bloc = TodoBloc();
  Widget child;

  TodoProvider({Key key, Widget child}) : super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    return true;
  }

  static TodoBloc of(BuildContext context) {
    return (context.inheritFromWidgetOfExactType(TodoProvider) as TodoProvider)
        .bloc;
  }
}