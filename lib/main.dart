import 'package:flutter/material.dart';

import './widgets/question.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('My Training - one'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Question(),
            Column(
              children: [
                Card(
                  elevation: 3,
                  child: Text('answers are here'),
                ),
                Card(
                  elevation: 3,
                  child: Text('answers are here'),
                ),
                Card(
                  elevation: 3,
                  child: Text('answers are here'),
                ),
                Card(
                  elevation: 3,
                  child: Text('answers are here'),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('corect ans'),
                Text('wrong ans'),
                Text('score'),
              ],
            )
          ],
        ));
  }
}
