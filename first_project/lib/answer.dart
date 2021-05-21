import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String text;
  final Function action;

  Answer(this.text, this.action);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.only(left: 10, right: 10),
      child: ElevatedButton(onPressed: this.action, child: Text(this.text)),
    );
  }
}
