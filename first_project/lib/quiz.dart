import 'package:first_project/answer.dart';
import 'package:first_project/question.dart';
import 'package:flutter/material.dart';

class Quiz extends StatelessWidget {
  final int _counter;
  final questions;
  final Function _answerQuestion;

  Quiz(this.questions, this._counter, this._answerQuestion);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questionText: questions[_counter]['questionText']),
        ...(questions[_counter]['answers'] as Iterable<Map<String, Object>>)
            .map((answer) {
          return Answer(answer['text'], () => _answerQuestion(answer['score']));
        }),
      ],
    );
  }
}
