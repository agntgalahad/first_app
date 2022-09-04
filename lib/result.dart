import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;

  Result(this.resultScore);

  String get resultPhrase {
    String resText = 'Cock';
    if (resultScore >= 45) {
      resText = 'Gryffindor!';
    } else if (resultScore >= 35) {
      resText = 'Hufflepuff!';
    } else if (resultScore >= 25) {
      resText = 'Ravenclaw!';
    } else if (resultScore >= 15) {
      resText = 'Slytherin!';
    }
    return resText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
