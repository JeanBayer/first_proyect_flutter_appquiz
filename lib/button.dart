import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final Function onPressedButton;
  final String word;
  final int score;
  Button(this.onPressedButton, this.word, this.score, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 250,
      height: 80,
      child: ElevatedButton(
        onPressed: () => onPressedButton(score),
        child: Text(word, style: TextStyle(fontSize: 20)),
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            const Color.fromRGBO(0, 122, 204, 1),
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30.0),
            ),
          ),
        ),
      ),
    );
  }
}
