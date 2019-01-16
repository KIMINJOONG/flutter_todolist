import 'dart:async';

import 'package:flutter/material.dart';

class TodoBloc {

  //input
  StreamController<List<String>> _item = StreamController();

  //output
  Stream<List<String>> get item => _item.stream;

  //push
  Function(List<String>) get addItem => _item.sink.add;

  dispose() {
    _item.close();
  }

}