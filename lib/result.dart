import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final totalScore;
  final Function resetQuiz;

  Result(this.totalScore, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (totalScore <= 8) {
      resultText = "Awesome";
    } else if (totalScore <= 12) {
      resultText = "Likable!";
    } else if (totalScore <= 16) {
      resultText = "Strange";
    } else {
      resultText = "bad";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text("Restart Quiz!"),
            color: Colors.blue,
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
