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
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
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
          Text(questions[questionIndex]),
          ElevatedButton(
            child: Text('Answer 1'),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 2'),
            onPressed: answerQuestion,
          ),
          ElevatedButton(
            child: Text('Answer 3'),
            onPressed: () => print('Answer 3 chosen!'),
          ),
        ]),
      ),
    );
  }
}
