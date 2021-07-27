import 'package:flutter/material.dart';

import './score_board.dart';

class Result extends StatelessWidget {
  final int totalScore;
  final int correctScore;
  final int wrongScore;

  Result(
    this.totalScore,
    this.correctScore,
    this.wrongScore,
  );

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
              Text('there is a result of test'),
              OutlinedButton(
                  onPressed: () {},
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
