import 'package:flutter/material.dart';
import 'package:flutter_counter_app/page_one.dart';
import 'package:flutter_counter_app/page_two.dart';
import 'package:flutter_counter_app/bloc_provider.dart';
import 'increment_bloc.dart';

Future<void> main() async {
  return runApp(
    BlocProvider(child: MyApp(), bloc: IncrementBloc())
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: PageOne(),
    );
  }
}







