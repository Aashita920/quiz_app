// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, deprecated_member_use, avoid_print

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  //const MyApp({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

// '_'turns the class from public to private
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0; //property

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favourite color?',
      'What\'s your favorurite animal?',
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My App'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]),
            //Point to the function
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ], //list
        ),
      ),
    );
  }
}
