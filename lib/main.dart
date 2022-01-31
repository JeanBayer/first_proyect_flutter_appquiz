import 'package:flutter/material.dart';
import 'question.dart';
import './modelos/question_list.dart';
import 'score.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _indexQuestion = 0;
  var totalScore = 0;
  String word = "";
  var questionQuantity = question.length - 1;

  void onPressedButton(score) {
    totalScore += score as int;
    if (questionQuantity >= _indexQuestion) {
      setState(() {
        _indexQuestion = _indexQuestion + 1;
      });
    }
  }

  void resetPressedButton() {
    setState(() {
      _indexQuestion = 0;
      totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My first app"),
          backgroundColor: const Color.fromARGB(220, 0, 0, 0),
        ),
        body: questionQuantity < _indexQuestion
            ? Score(totalScore, resetPressedButton)
            : Column(
                children: [
                  Question(_indexQuestion, onPressedButton),
                ],
              ),
      ),
    );
  }
}
