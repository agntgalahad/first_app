import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What colour do you like ?',
      'answer': [
        {'text': 'Red', 'score': 10},
        {'text': 'Yellow', 'score': 8},
        {'text': 'Blue', 'score': 6},
        {'text': 'Green', 'score': 4},
      ],
    },
    {
      'questionText': 'What would you and your friend are in trouble ?',
      'answer': [
        {'text': 'Give my life for them', 'score': 10},
        {'text': 'Kill someone for them', 'score': 4},
        {'text': 'Emotionally sonnect to them', 'score': 8},
        {'text': 'Come up with a way to save both of us', 'score': 6},
      ],
    },
    {
      'questionText': 'What animal do you like',
      'answer': [
        {'text': 'Phoenix', 'score': 10},
        {'text': 'Badger', 'score': 8},
        {'text': 'Eagle', 'score': 6},
        {'text': 'Snake', 'score': 4},
      ],
    },
    {
      'questionText': 'What do you value most in your life ?',
      'answer': [
        {'text': 'Knowledge', 'score': 6},
        {'text': 'Glory', 'score': 10},
        {'text': 'Power', 'score': 4},
        {'text': 'Friendship', 'score': 8},
      ],
    },
    {
      'questionText': 'How do your friends describe you ?',
      'answer': [
        {'text': 'Big Brain', 'score': 6},
        {'text': 'Brave', 'score': 10},
        {'text': 'Cunning', 'score': 4},
        {'text': 'Emotional Head', 'score': 8},
      ],
    },
  ];
  var _qindex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _qindex = _qindex + 1;
    });

    print(_qindex);
    print('Answer Chosen!!');
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Hogwarts House Quiz"),
          foregroundColor: Colors.black,
        ),
        body: _qindex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                qindex: _qindex,
                questions: _questions,
              )
            : Result(_totalScore),
      ),
    );
  }
}
