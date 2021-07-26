import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
  Widget? _biuldContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.amber.withOpacity(0.4),
            Colors.deepOrange,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(50),
      ),
      padding: const EdgeInsets.all(10),
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
            'Correct Ans',
            '50',
          ) as Widget,
        ) as Widget,
        _biuldContainer(
          _biuldGridTile(
            'Wrong Ans',
            '30',
          ) as Widget,
        ) as Widget,
        _biuldContainer(
          _biuldGridTile(
            'Score',
            '600',
          ) as Widget,
        ) as Widget,
      ],
    );
  }
}
