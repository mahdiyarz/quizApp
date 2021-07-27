import 'package:flutter/material.dart';

import '../data.dart';

class Question extends StatelessWidget {
  final int indexApp;
  Question(this.indexApp);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      height: 100,
      child: Card(
        color: Theme.of(context).primaryColorDark,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        elevation: 5,
        child: Container(
          child: Center(
            child: Text(
              ourData[indexApp].question as String,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
