import 'package:flutter/material.dart';
import 'package:flutter_counter_app/page_two.dart';
import 'package:flutter_counter_app/bloc_provider.dart';
import 'increment_bloc.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider<IncrementBloc>(
          child: PageOne(),
          bloc: IncrementBloc())
    );
  }
}

class PageOne extends StatelessWidget {
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: StreamBuilder<int>(
                 stream: bloc.outCounter,
                 initialData: 0,
                 builder: (BuildContext context, AsyncSnapshot<int> snapshot) => Text('You pushed ${snapshot.data}')
              )
            ),

            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: RaisedButton(
                  child: Text('Page Two'),
                  onPressed: (){
                    //_pageTwo(context);
                    bloc.incrementCounter.add(null);
                  }),
            ),
          ],
        ),
      ),
    );
  }
  void _pageTwo(BuildContext context){
    Navigator
        .of(context)
        .push(MaterialPageRoute(builder: (BuildContext context){
          return BlocProvider<IncrementBloc>(
              child: PageTwo(),
              bloc: IncrementBloc());
    }));
  }
}







