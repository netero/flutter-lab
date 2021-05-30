import 'package:first_project/quiz.dart';
import 'package:first_project/result.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyAwesomeApp());
}

class MyAwesomeApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAwesomeAppState();
  }
}

class _MyAwesomeAppState extends State<MyAwesomeApp> {
  var questions = [
    {
      'questionText': '¿Cual es tu color favorito?',
      'answers': [
        {'text': 'Rojo', 'score': 10},
        {'text': 'Azul', 'score': 6},
        {'text': 'Verde', 'score': 4},
        {'text': 'Amarillo', 'score': 1},
      ],
    },
    {
      'questionText': '¿Cual es tu animal favorito?',
      'answers': [
        {'text': 'Perro', 'score': 10},
        {'text': 'Gato', 'score': 6},
        {'text': 'Tortuga', 'score': 4},
        {'text': 'Serpiente', 'score': 1},
      ],
    },
    {
      'questionText': '¿Cual es tu tipo de música favorita?',
      'answers': [
        {'text': 'Rock', 'score': 10},
        {'text': 'Pop', 'score': 6},
        {'text': 'Electronica', 'score': 4},
        {'text': 'Gotica', 'score': 1},
      ],
    },
  ];
  var _counter = 0;
  var scoreSum = 0;
  void _answerQuestion(int score) {
    setState(() {
      scoreSum += score;
      _counter++;
    });
  }

  void resetQuiz() {
    setState(() {
      this._counter = 0;
      this.scoreSum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test de personalidad"),
        ),
        body: questions.length == _counter
            ? Result(scoreSum, resetQuiz)
            : Quiz(questions, _counter, _answerQuestion),
      ),
    );
  }
}
