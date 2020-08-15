import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Color(0xFF3b5249),
      appBar: AppBar(
        backgroundColor: Color(0xFF519872),
        leading: Icon(Icons.ac_unit),
        title: Text("Dices"),
      ),
      body: MyApp(),
    ),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 2;
  int num2 = 3;

  void changeDiceNumber() {
    setState(() {
      num = Random().nextInt(6) + 1;
      num2 = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: ButtonTheme(
                padding: EdgeInsets.fromLTRB(16, 0, 8, 0),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                child: FlatButton(
                  onPressed: () {
                    changeDiceNumber();
                  },
                  child: Image.asset('images/dice$num.png'),
                  materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                )),
          ),
          Expanded(
            child: ButtonTheme(
              padding: EdgeInsets.fromLTRB(8, 0, 16, 0),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              child: FlatButton(
                onPressed: () {
                  changeDiceNumber();
                },
                child: Image.asset('images/dice$num2.png'),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
