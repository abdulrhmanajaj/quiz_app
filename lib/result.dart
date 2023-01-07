import 'package:ajaj/main.dart';
import 'package:flutter/material.dart';
import 'main.dart';

class Result extends StatelessWidget {
  final Function() q;
  final int resultScore;

  Result(this.q, this.resultScore);

  String get resultPhrase {
    String resultText = '';
    if (resultScore >= 70) {
      resultText = 'You are awesome!';
    } else if (resultScore >= 40) {
      resultText = 'Pretty likable!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Your Score Is: $resultScore",
            style: TextStyle(fontSize: 30, color: isSwitched==false? Colors.white : Colors.black, ),
          ),
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 45, fontWeight: FontWeight.bold , color: isSwitched==false? Colors.white : Colors.black,),
          ),
          TextButton(
            onPressed: q,
            child: Text(
              "restart the app",
              style: TextStyle(fontSize: 30, color: Colors.blue),
            ),
          )
        ],
      ),
    );
  }
}
