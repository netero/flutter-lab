import 'package:flutter/material.dart';

class TextControl extends StatefulWidget {
  @override
  _TextControlState createState() => _TextControlState();
}

class _TextControlState extends State<TextControl> {
  var _buttonTexts = ["Texto 1", "Texto 2"];
  var _buttonText = "Texto 1";
  void changeText() {
    setState(() {
      _buttonText =
          _buttonText == _buttonTexts[0] ? _buttonTexts[1] : _buttonTexts[0];
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: changeText,
      child: Text(_buttonText),
    );
  }
}
