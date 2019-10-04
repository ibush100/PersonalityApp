import 'package:flutter/material.dart';

void main () => runApp(MyApp());


class MyApp extends  StatelessWidget{
  var questionIndex = 0;
  void answerQuestion() {
   questionIndex = questionIndex + 1;
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
          Text(questions[questionIndex]),
          RaisedButton (child: Text('Answer 1'), onPressed: answerQuestion,),
         RaisedButton (child: Text('Answer 2'), onPressed: () => print('answer 2')),
         RaisedButton (child: Text('Answer 3'),onPressed: null)
        ],)


    ),);
  }
}