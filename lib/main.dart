//first flutter app written by jack darnell from course flutter complete guide
import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

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
      _questionIndex = _questionIndex + 1;
    });
    print('Answer chosen!');
  }

  Widget build(BuildContext context) {
    final questions = [
      //final means it can't be changed
      //variables are all pointers also
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': 'What\'s your favorite animal?',
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': 'What\'s your favorite clothing brand?',
        'answers': ['Nike', 'Polo', 'Reebok', 'North Face']
      },
      {
        'questionText': 'What\'s your favorite tech company?',
        'answers': ['Apple', 'Microsoft', 'Nokia', 'Samsung']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter App'),
        ),
        body: Column(children: <Widget>[
          Question(questions[_questionIndex]['questionText'] as String),
          ...(questions[_questionIndex]['answers'] as List<String>)
              .map((answer) {
            //... is the spread operator
            return Answer(_answerQuestion, answer);
          }).toList()
        ]),
      ),
    );
  }
}
