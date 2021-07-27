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
        Center(
          child: Text('Finish'),
        ),
        Container(
          height: 90,
          child: ScoreBoard(totalScore, correctScore, wrongScore),
        ),
      ],
    );
  }
}
