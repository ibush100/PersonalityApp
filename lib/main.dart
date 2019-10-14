import 'package:flutter/material.dart';

import './question.dart';

void main () => runApp(MyApp());


class MyApp extends  StatefulWidget{

    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
  }


  class _MyAppState extends State <MyApp>{
var questionIndex = 0;
void answerQuestion() {
  setState(() {
    questionIndex = questionIndex + 1;
  });
  print(questionIndex);
}

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?',
    ];

    // TODO: implement build
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('myfirstApp'),),
      body: Column(
        children:[
          Question(questions[questionIndex]),
          RaisedButton (child: Text('Answer 1'), onPressed: answerQuestion,),
         RaisedButton (child: Text('Answer 2'), onPressed: () => print('answer 2')),
         RaisedButton (child: Text('Answer 3'),onPressed: null)
        ],)


    ),);
  }
}