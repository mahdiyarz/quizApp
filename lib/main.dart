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
  int _indexApp = 0;
  int _totalScore = 0;
  void _choseAnswer(int choseScore) {
    setState(() {
      _indexApp = _indexApp + 1;
      _totalScore = _totalScore + choseScore;
      // print(_totalScore);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Training - one'),
        ),
        body: _indexApp < ourData.length
            ? Column(
                children: [
                  Container(
                    height: 660,
                    child: Column(
                      children: [
                        Question(_indexApp),
                        ...(ourData[_indexApp].answers
                                as List<Map<String, Object>>)
                            .map((e) {
                          return Answer(() => _choseAnswer(e['score'] as int),
                              e['textAns']);
                          // return Answer(_choseAnswer, e['textAns']);
                        }).toList(),
                      ],
                    ),
                  ),
                  Container(
                    height: 90,
                    child: ScoreBoard(),
                  ),
                ],
              )
            : Center(
                child: Text('Finish'),
              ));
  }
}
