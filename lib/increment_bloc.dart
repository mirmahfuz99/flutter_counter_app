import 'dart:async';
import 'dart:collection';
import 'package:flutter_counter_app/bloc_provider.dart';
import 'package:rxdart/rxdart.dart';

class IncrementBloc implements BlocBase {

  int _counter;
  BehaviorSubject<int> _counterController = BehaviorSubject<int>();
  Sink<int> get _inAdd => _counterController.sink;
  Stream<int> get outCounter => _counterController.stream;


  BehaviorSubject _actionController = BehaviorSubject();
  Sink get incrementCounter => _actionController.sink;


  IncrementBloc(){
    _counter = 0;
    _actionController.stream.listen(_handleLogic);
  }




  @override
  void dispose() {
    _actionController.close();
    _counterController.close();
  }

  void _handleLogic(data){
    print("hello");
    _counter = _counter + 1;
    _inAdd.add(_counter);
  }


}