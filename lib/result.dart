import 'dart:developer';

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalScore;
  final Function _resetQuiz;

  Result(this._totalScore, this._resetQuiz);

  String get resultPhrase {
    String resultText;
    if (this._totalScore <= 8) {
      resultText = 'You are awesome and innocent!';
    } else if (this._totalScore <= 12) {
      resultText = 'Pretty likable!';
    } else if (this._totalScore <= 16) {
      resultText = 'You are ... strange?!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          TextButton(
            onPressed: this._resetQuiz,
            child: Text('Restart Quiz!'),
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all(Colors.red),
            ),
          ),
        ],
      ),
    );
  }
}
