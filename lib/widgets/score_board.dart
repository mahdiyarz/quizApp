import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  final int score;
  final int correctScore;
  final int wrongScore;
  ScoreBoard(this.score, this.correctScore, this.wrongScore);

  Widget? _biuldContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.lightBlue.shade400.withOpacity(0.4),
            Colors.blue,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.only(
        top: 5,
        bottom: 0,
      ),
      child: child,
    );
  }

  Widget? _biuldGridTile(String title, String number) {
    return GridTile(
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
      footer: GridTileBar(
        title: Text(
          number,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black54,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GridView(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      padding: EdgeInsets.all(10),
      children: [
        _biuldContainer(
          _biuldGridTile(
            'Correct     ' + '     Answers',
            correctScore.toString(),
          ) as Widget,
        ) as Widget,
        _biuldContainer(
          _biuldGridTile(
            'Wrong      ' + '     Answers',
            wrongScore.toString(),
          ) as Widget,
        ) as Widget,
        _biuldContainer(
          _biuldGridTile(
            'Total      ' + '      Score',
            score.toString(),
          ) as Widget,
        ) as Widget,
      ],
    );
  }
}
