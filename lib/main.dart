import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var ansIndex = 0;
  void answerQuestion() {
    setState(() {
      ansIndex = ansIndex + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var question = [
      "what\s your fav color?",
      "what\s your fav pen?",
      "what\s your fav Book?",
    ];
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Quiz'),
          ),
          body: Column(
            children: [
              Text(question[ansIndex]),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text('answer 1'),
              ),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text('answer 2'),
              ),
              RaisedButton(
                onPressed: answerQuestion,
                child: Text('answer 3'),
              ),
            ],
          )),
    );
  }
}
