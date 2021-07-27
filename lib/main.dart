import 'package:flutter/material.dart';

import './widgets/result.dart';
import './widgets/quiz.dart';
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
  int _indexApp = 0;
  int _totalScore = 0;
  int _correctScore = 0;
  int _wrongScore = 0;
  void _choseAnswer(int choseScore) {
    setState(() {
      _indexApp = _indexApp + 1;
      _totalScore = _totalScore + choseScore;
      if (choseScore == 50) {
        _correctScore = _correctScore + 1;
      } else {
        _wrongScore = _wrongScore + 1;
      }
      // print(_totalScore);
    });
  }

  void _resetApp() {
    setState(() {
      _indexApp = 0;
      _totalScore = 0;
      _correctScore = 0;
      _wrongScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Training - one'),
      ),
      body: _indexApp < ourData.length
          ? Quiz(
              _choseAnswer,
              _indexApp,
              _totalScore,
              _correctScore,
              _wrongScore,
            )
          : Result(
              _resetApp,
              _totalScore,
              _correctScore,
              _wrongScore,
            ),
    );
  }
}
