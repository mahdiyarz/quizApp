import 'package:flutter/material.dart';

import './score_board.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final int correctScore;
  final int wrongScore;
  final resetApp;

  Result(
    this.resetApp,
    this.totalScore,
    this.correctScore,
    this.wrongScore,
  );

  String get resultText {
    String finalText;
    if (correctScore == 3) {
      finalText = 'WELL... It\'s seems you know every thing about me...';
      return finalText;
    } else if (correctScore == 2) {
      finalText = 'OOOk! try more and find out any thing of me!';
      return finalText;
    } else if (correctScore == 1) {
      finalText = 'oooo... Poor little! try more!';
      return finalText;
    } else if (correctScore == 0) {
      finalText = 'You know nothing...?!!';
      return finalText;
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 90,
          child: ScoreBoard(totalScore, correctScore, wrongScore),
        ),
        Container(
          height: 500,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Congratulation... you finish this test finally!'),
              Text(
                resultText,
                style: TextStyle(color: Colors.blueGrey),
              ),
              OutlinedButton(
                  onPressed: resetApp,
                  child: Text(
                    'Do you want to try this test againe?',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  )),
            ],
          ),
        ),
      ],
    );
  }
}
