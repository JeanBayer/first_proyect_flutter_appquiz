import 'package:flutter/material.dart';

class Score extends StatelessWidget {
  final int totalScore;
  final VoidCallback resetPressedButton;
  const Score(this.totalScore, this.resetPressedButton, {Key? key})
      : super(key: key);

  String get puntuacion {
    String textFinal;
    if (totalScore > 8) {
      textFinal = "You win";
    } else {
      textFinal = "You Lose";
    }
    return textFinal;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            puntuacion,
            style: TextStyle(
              fontSize: 40,
            ),
            textAlign: TextAlign.center,
          ),
          TextButton(
              onPressed: resetPressedButton,
              child: Text(
                "Reiniciar",
                style: TextStyle(color: Colors.blueAccent.shade700),
              ))
        ],
      ),
    );
  }
}
