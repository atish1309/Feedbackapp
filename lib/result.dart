import 'package:flutter/material.dart';
class Result extends StatelessWidget {
final double resultScore;
final Function resetquiz;
Result(this.resultScore,this.resetquiz);
String get resultPhrase{
  var resultText= 'thanks for filling the form';
  if(resultScore<=10){
    resultText= 'We are sorry for inconvenience';
  } else if(resultScore>10&&resultScore<=20){
    resultText= 'We hope to serve better next time';
  }
  else{
    resultText= 'We hope you come back next time';
  }

  return resultText;
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:<Widget> [ Text(resultPhrase,

          style: TextStyle(fontSize: 35,color: Colors.green),
          textAlign: TextAlign.center,
        ),TextButton(child: Text('restart quiz'),
          onPressed: resetquiz()),
      ]
      ),
    );
  }
}
