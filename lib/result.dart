import 'package:flutter/material.dart';

class Result extends StatelessWidget {

  final int resultScore;
  Result(this.resultScore);

  String get resultPhrase {
    String resultText;
    if(resultScore <= 8) {
      resultText = 'You are awesome';
    } else if ( resultScore <= 16) {
        resultText = 'stil awesome';
      } else {
      resultText = 'you are awesome!';
    }

    return resultText;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('You did it!', style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),),
    );
  }
}
