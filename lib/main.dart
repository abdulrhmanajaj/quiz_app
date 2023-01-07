import 'package:ajaj/answer.dart';
import 'package:ajaj/quiz.dart';
import 'package:ajaj/result.dart';
import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
import 'result.dart';

main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}
  bool isSwitched = false;
class _MyAppState extends State<MyApp> {


  int _totalScore = 0;
  int _questionIndex = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void answerQustion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex += 1;
    });
  }

  final List<Map<String, Object>> _question = [
    {
      "questionText": "what's your favourite color?",
      "answer": [
        {"text": "Black", "score": 10},
        {"text": "Blue", "score": 20},
        {"text": "Red", "score": 30},
        {"text": "White", "score": 40}
      ]
    },
    {
      "questionText": "what's your favourite animal?",
      "answer": [
        {"text": "Cat", "score": 10},
        {"text": "Dog", "score": 20},
        {"text": "Horse", "score": 30},
        {"text": "Tiger", "score": 40}
      ]
    },
    {
      "questionText": "what's your favourite phone?",
      "answer": [
        {"text": "Iphone", "score": 10},
        {"text": "samsung", "score": 20},
        {"text": "Huawei", "score": 30},
        {"text": "LG", "score": 0}
      ]
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App",style: TextStyle(color: isSwitched==false? Colors.white : Colors.black,),),
          actions: <Widget>[
            Switch(
              value: isSwitched,
              onChanged: (value) {
                setState(() {
                  isSwitched =value;
                  print(isSwitched);
                });
              },
              activeColor: Colors.black,
              inactiveThumbColor: Colors.white,
              inactiveTrackColor: Colors.white,
            ),
          ],
        ),
        body: Container(
          color: isSwitched==false? Colors.white : Colors.black,
          child: _questionIndex < _question.length
              ? Quiz(_question, answerQustion, _questionIndex)
              : Result(_resetQuiz, _totalScore),
        ),
      ),
    );
  }
}
