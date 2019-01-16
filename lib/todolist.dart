import 'package:flutter/material.dart';
import 'package:flutter_app_to_do_list/bloc/todo_bloc.dart';
import 'package:flutter_app_to_do_list/bloc/todo_provider.dart';
import 'package:flutter_app_to_do_list/write.dart';

class TodoList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    TodoBloc bloc = TodoProvider.of(context);



    final list = [
      'a',
      'b',
      'c'
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('TodoList'),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, idx) => ListTile(
            title: Text(list[idx]),
          )
      ),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {

            Navigator.of(context).pushNamed("/write");
          }
          ),
    );
  }

}
class _buildListWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TodoBloc bloc = TodoProvider.of(context);
    return StreamBuilder(
      stream: bloc.item,
      builder: (context, AsyncSapshot<List<String>>
      ),
    )
  }

  Widget _buildListBuilder() {
    return ListView.builder(
      itemCount: list.length,
      itemBuilder: (context, idx) => ListTile(

      ),
    );
  }
}
