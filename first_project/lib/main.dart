import 'package:first_project/answer.dart';
import 'package:flutter/material.dart';

import 'package:first_project/question.dart';

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
      'answers': ['Rojo', 'Azul', 'Verde', 'Amarillo'],
    },
    {
      'questionText': '¿Cual es tu animal favorito?',
      'answers': ['Perro', 'Gato', 'Tortuga', 'Conejo'],
    },
    {
      'questionText': '¿Cual es tu tipo de música favorita?',
      'answers': ['Rock', 'Pop', 'Electrónica', 'Gótica'],
    },
  ];
  var _counter = 0;
  void _answerQuestion() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Test de personalidad"),
        ),
        body: Column(
          children: [
            Question(questionText: questions[_counter]['questionText']),
            ...(questions[_counter]['answers'] as Iterable<String>)
                .map((answer) {
              return Answer(answer, _answerQuestion);
            }),
            Text("counter:" + _counter.toString()),
          ],
        ),
      ),
    );
  }
}
