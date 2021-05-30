import 'package:flutter/material.dart';
import 'package:flutter_assignment_1/text-control.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Titulo"),
        ),
        body: Column(
          children: [
            Text("Texto ejemplo"),
            TextControl(),
          ],
        ),
      ),
    );
  }
}
