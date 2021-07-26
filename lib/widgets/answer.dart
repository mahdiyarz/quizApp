import 'package:flutter/material.dart';

import '../data.dart';

class Answer extends StatelessWidget {
  final choseAns;
  final myAns;
  Answer(this.choseAns, this.myAns);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: ListTile(
        onTap: choseAns,
        leading: CircleAvatar(
          child: Text('1'),
        ),
        title: Text(
          myAns,
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
