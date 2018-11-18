import 'package:flutter/material.dart';
import 'increment_bloc.dart';
import 'bloc_provider.dart';
class PageTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final IncrementBloc bloc = BlocProvider.of<IncrementBloc>(context);


    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
                child: Text('Hit me'),
                onPressed: (){
                  bloc.incrementCounter.add(null);
                }),

          ],
        ),
      ),
    );
  }
}