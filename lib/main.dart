import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

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
      'questionText': 'What\'s your favorite color?',
      'answers': [{'text':'Black', 'score' : 0}, {'text' :'Red', 'score': 5}, {'text':'Green', 'score': 3}, {'text':'White', 'score': 1}],
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [{'text':'Rabbit', 'score': 0}, {'text':'Snake', 'score': 10}, {'text':'Elephant', 'score': 4}, {'text':'Lion', 'score': 2}],
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [{'text':'Max', 'score': 10}, {'text':'Max', 'score': 10}, {'text':'Max', 'score': 10}, {'text':'Max', 'score': 10}],
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    // var aBool = true;
    // aBool = false;

    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
    if (_questionIndex < _questions.length) {
      print('We have more questions!');
    } else {
      print('No more questions!');
    }
  }

  @override
  Widget build(BuildContext context) {
    // var dummy = const ['Hello'];
    // dummy.add('Max');
    // print(dummy);
    // dummy = [];
    // questions = []; // does not work if questions is a const

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(answerQuestion: _answerQuestion, questionIndex: _questionIndex,questions: _questions,)
            : Result(_totalScore),
      ),
    );
  }
}
