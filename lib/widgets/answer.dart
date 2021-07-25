import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          child: Text('1'),
        ),
        title: Text(
          'answers are here',
          textAlign: TextAlign.justify,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
