import 'package:flutter/material.dart';

class ScoreBoard extends StatelessWidget {
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
        GridTile(
          child: Text('Correct'),
          footer: GridTileBar(
            title: Text('50'),
          ),
        ),
        GridTile(
          child: Text('Wrong'),
          footer: GridTileBar(
            title: Text('50'),
          ),
        ),
        GridTile(
          header: Text('Score'),
          child: Center(
            child: Text(
              '50',
              style: TextStyle(backgroundColor: Colors.amber),
            ),
          ),
        ),
      ],
    );
  }
}
