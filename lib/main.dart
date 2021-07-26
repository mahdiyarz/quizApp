import 'package:flutter/material.dart';

import './widgets/answer.dart';
import './widgets/question.dart';
import './widgets/score_board.dart';
import './data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int indexApp = 0;
  void choseAnswer() {
    for (int i = 0; indexApp < ourData.length; i++) {
      setState(() {
        indexApp = indexApp + 1;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Training - one'),
      ),
      body: Column(
        children: [
          Container(
            height: 660,
            child: Column(
              children: [
                Question(indexApp),
                Answer(),
              ],
            ),
          ),
          Container(
            height: 90,
            child: ScoreBoard(),
          ),
        ],
      ),
    );
  }
}
