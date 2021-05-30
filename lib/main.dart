import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 6},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Cat', 'score': 1},
        {'text': 'Dog', 'score': 3},
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 12},
        {'text': 'Lion', 'score': 5},
      ],
    },
    {
      'questionText': 'Sho\'s your favorite instructor?',
      'answers': [
        {'text': 'Kelly', 'score': 1},
        {'text': 'John', 'score': 2},
        {'text': 'Manu', 'score': 3},
        {'text': 'Bob', 'score': 4},
        {'text': 'Max', 'score': 5},
      ],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      this._questionIndex += 1;
      this._totalScore += score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: (this._questionIndex < this._questions.length)
            ? Quiz(this._questions, this._questionIndex, this._answerQuestion)
            : Result(this._totalScore, this._resetQuiz),
      ),
    );
  }
}
