import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/question.dart';
import 'package:flutter_quiz_app/answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': "What's your favorite color?",
      'answers': ["Black", "Red", "Green", "White"],
    },
    {
      'questionText': "What's your favorite animal?",
      'answers': ["Rabbit", "Snake", "Elephant", "Lion"],
    },
    {
      'questionText': "Who's your favorite instructor?",
      'answers': ["Max", "Max", "Max", "Max"],
    },
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    if (_questionIndex < questions.length - 1) {
      setState(() {
        _questionIndex = _questionIndex + 1;
      });

      print(_questionIndex);
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Heloo"),
        ),
        body: Column(
          children: <Widget>[
            Question(
              questions[_questionIndex]['questionText'],
            ),
            ...(questions[_questionIndex]['answers'] as List<String>)
                .map((answers) {
              return Answer(_answerQuestion, answers);
            }).toList()
          ],
        ),
      ),
    );
  }
}
