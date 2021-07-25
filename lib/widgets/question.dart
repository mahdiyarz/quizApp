import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
      ),
      child: Card(
        color: Theme.of(context).primaryColorDark,
        elevation: 5,
        child: Center(
          child: Text(
            'What\'s your name exactlly?',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
