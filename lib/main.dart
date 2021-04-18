import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  int questionIndex = 0;
  void answerQuestion() {
    questionIndex = questionIndex + 1;
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color',
      'What\'s your favourite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            ElevatedButton(
              onPressed: answerQuestion,
              child: Text('Answer one'),
            ),
            RaisedButton(
              onPressed: () => print('hello answer two'),
              child: Text('Answer two'),
            ),
            RaisedButton(
              child: Text('Answer Three'),
              onPressed: () {
                print('answer three');
              },
            )
          ],
        ),
      ),
    );
  }
}
