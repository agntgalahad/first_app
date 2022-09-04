

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, Object>> questions;
  final int qindex;
  final Function(int) answerQuestion;
  Quiz(
      {required this.questions,
      required this.answerQuestion,
      required this.qindex,});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[qindex]['questionText'] as String,
        ),
        ...(questions[qindex]['answer'] as List<Map<String, Object>>).map((answer) {
          return Answer(() => answerQuestion(answer['score'] as int), answer['text'] as String);
        }).toList()
      ],
    );
  }
}
