import 'package:flutter/material.dart';
import 'package:flutter_counter_app/bloc_provider.dart';
import 'package:flutter_counter_app/favorite_button.dart';
import 'package:flutter_counter_app/increment_bloc.dart';
import 'package:flutter_counter_app/page_two.dart';
class PageOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),

      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                FavoriteButton(
                  child: const Icon(Icons.favorite),
                ),
              ],
            ),


            Padding(
              padding: const EdgeInsets.only(top:30.0),
              child: RaisedButton(
                  child: Text('Hit me '),
                  onPressed: (){
                    _pageTwo(context);
                    //bloc.incrementCounter.add(null);
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
      return PageTwo();
    }));
  }



}