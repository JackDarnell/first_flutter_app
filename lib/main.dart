//first flutter app written by jack darnell from course flutter complete guide
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  //classess should be standalone, all data and funcs should be in the same class. Keeps the widget as its own unit.

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  //leading underscore makes it a private class
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = questionIndex + 1;
    });
    print('Answer chosen!');
  }

  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(children: <Widget>[
          Text(questions[_questionIndex]),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: _answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: _answerQuestion,
          ),
        ]),
      ),
    );
  }
}
