import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './score_board.dart';
import '../data.dart';

class Quiz extends StatelessWidget {
  final int indexApp;
  final Function choseAnswer;
  final int totalScore;
  final int correctScore;
  final int wrongScore;

  Quiz(
    this.choseAnswer,
    this.indexApp,
    this.totalScore,
    this.correctScore,
    this.wrongScore,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 660,
          child: Column(
            children: [
              Question(indexApp),
              ...(ourData[indexApp].answers as List<Map<String, Object>>)
                  .map((e) {
                return Answer(
                    () => choseAnswer(e['score'] as int), e['textAns']);
                // return Answer(_choseAnswer, e['textAns']);
              }).toList(),
            ],
          ),
        ),
        Container(
          height: 90,
          child: ScoreBoard(totalScore, correctScore, wrongScore),
        ),
      ],
    );
  }
}
