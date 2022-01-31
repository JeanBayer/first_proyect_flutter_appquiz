import 'package:flutter/material.dart';
import 'button.dart';
import './modelos/question_list.dart';

class Question extends StatelessWidget {
  final int indexQuestion;
  int score = 0;
  final Function onPressedButton;
  var lista = [];
  Question(this.indexQuestion, this.onPressedButton, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(20),
          width: double.infinity,
          child: Text(
            question[indexQuestion]["question"] as String,
            style: TextStyle(fontSize: 30),
            textAlign: TextAlign.center,
          ),
        ),
        ...(question[indexQuestion]["incorrect_answers"] as List<String>)
            .map((answer) {
          return Button(onPressedButton, answer, 0);
        }),
        Button(onPressedButton,
            question[indexQuestion]["correct_answer"] as String, 1),
      ],
    );
  }
}
