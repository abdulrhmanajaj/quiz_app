import 'package:flutter/material.dart';
import 'question.dart';
import 'answer.dart';
class Quiz extends StatelessWidget {
  
  final List<Map<String, Object>> question;
  final int questionIndex;
  final Function(int s) answerQustion;

Quiz(this.question,this.answerQustion,this.questionIndex);

  @override
  Widget build(BuildContext context) {
    return Column(
                  children: <Widget>[
                    Question(
                        question[questionIndex]["questionText"].toString()),
                    ...(question[questionIndex]["answer"] as List<Map<String,Object>>).map((ans) {
                      return Answer(()=> answerQustion(int.parse(ans["score"].toString())), ans['text'].toString());
                    }).toList(),
                  ],
                );
  }
}