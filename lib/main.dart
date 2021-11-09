import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  home: Random_Numbers() ,
));

class Random_Numbers extends StatefulWidget {
  const Random_Numbers({Key? key}) : super(key: key);

  @override
  _Random_NumbersState createState() => _Random_NumbersState();
}

class _Random_NumbersState extends State<Random_Numbers> {

  //int generate - https://csrng.net/csrng/csrng.php;
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Random Number generator'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Random Number Generator',
            ),
            Padding(
              padding: EdgeInsets.all(20.0),
              child: TextField(
                controller: lowController,
                decoration: InputDecoration(
                    hintText: 'low'
                ),
              ),
            ),
            Padding(
              padding:EdgeInsets.all(20.0),
             child: TextField(
               controller: highController,
               decoration: InputDecoration(
                  hintText: 'High'
               ),
             ),
            ),
            FlatButton(
                onPressed: () {
                  randomNumber();
                },
                child: Text(
                  'Calculate'
                ),
            ),

          Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  controller: resultText
                ),
            ),
        ],
      ),
                )
    );
  }
}
