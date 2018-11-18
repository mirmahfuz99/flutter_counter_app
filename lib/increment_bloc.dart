import 'dart:async';
import 'dart:collection';
import 'package:flutter_counter_app/bloc_provider.dart';

class IncrementBloc implements BlocBase {

  int _counter;
  StreamController<int> _counterController = StreamController<int>();
  StreamSink<int> get _inAdd => _counterController.sink;
  Stream<int> get outCounter => _counterController.stream;


  StreamController _actionController = StreamController();
  StreamSink get incrementCounter => _actionController.sink;


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