import 'package:flutter/material.dart';
import './answer.dart';

import './question.dart';

void main() {
  runApp(MyApp());
}

// allowing data to be passed from the State Class
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// State class being inheritated by statefulWidget
class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favourite color',
      'answers': ['black', 'red', 'white'],
    },
    {
      'questionText': 'What\'s your favourite animal',
      'answers': ['cat', 'dog', 'house'],
    },
    {
      'questionText': 'What\'s your favourite person',
      'answers': ['Lisaer', 'Shii', 'Eliza'],
    },
  ];
  var _questionIndex = 0;
  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < questions.length) {
      print('We have more questions');
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Quiz App'),
        ),
        body: _questionIndex < questions.length
            ? Column(
                children: [
                  Question(
                    questions[_questionIndex]['questionText'],
                  ),
                  ...(questions[_questionIndex]['answers'] as List<String>)
                      .map((answer) {
                    return Answer(_answerQuestion, answer);
                  }).toList()
                ],
              )
            : Center(
                child: Text('You did it!!'),
              ),
      ),
    );
  }
}
