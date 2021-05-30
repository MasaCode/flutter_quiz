import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String _answerText;
  final Function _pressedHandler;

  Answer(this._pressedHandler, this._answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        child: Text(this._answerText),
        onPressed: _pressedHandler,
      ),
    );
  }
}
