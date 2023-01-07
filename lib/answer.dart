import 'package:flutter/material.dart';
import 'main.dart';
class Answer extends StatelessWidget {
  final String answerText;
  final  Function() x;

  Answer(this.x , this.answerText, );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      width: double.infinity,
      child:
      ElevatedButton(
                style:ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.blue),
                  foregroundColor: MaterialStateProperty.all(isSwitched==false? Colors.white : Colors.black,), 
                ),
                child: Text(answerText, style: TextStyle(fontSize: 25),),
                onPressed: x , 
                ),
    );
  }
}