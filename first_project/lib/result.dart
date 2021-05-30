import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int score;
  final Function resetAction;
  Result(this.score, this.resetAction);

  String get resultPhrase {
    var resultText = "Lo logaste";
    if (this.score <= 8) {
      resultText = "Eres impresionante";
    } else if (this.score <= 20) {
      resultText = "Muy aceptable";
    } else if (this.score <= 16) {
      resultText = "Eres extraño";
    } else {
      resultText = "Eres malo!!!";
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              resultPhrase,
              style: TextStyle(
                fontSize: 38,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextButton(
                onPressed: this.resetAction, child: Text("Reiniciar Quiz"))
          ],
        ),
      ),
    );
  }
}
