import 'package:flutter/material.dart';
import 'result.dart';
void main()=> runApp(QuizApp());
class QuizApp extends StatefulWidget{
  @override
  _QuizAppState createState() => _QuizAppState();
}
class _QuizAppState extends State<QuizApp> {
  double _currentSliderValue = 1;
  double _sum=0;
  int _questionIndex=0;
  var questions=['How did you like our Service?',
    'How did you appreciate the Sanitation?',
    'How was the Lighting?',
    'How likely are you to come back here?',
    'How was the Sound Quality?',
    'How likely are you to recommend us to your friends?'
  ];
  Function returnRquiz(){

  return (){
  setState(() {
  _sum=0;
  _questionIndex=0;
  _currentSliderValue=1;
  });
  };
  }

void SubmitQuestion(){
  setState(() {
    _questionIndex++;
    _sum=_sum+_currentSliderValue;
  });

}
  @override
  Widget build(BuildContext context){
    return MaterialApp(home: Scaffold(
      appBar: AppBar(title: Text('Feedback App')),

    body: _questionIndex<=5 ? Column(mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[Text(questions[_questionIndex]),
    Slider(
    value: _currentSliderValue,
    min: 1,
    max: 5,
    divisions: 4,
    label: _currentSliderValue.round().toString(),
    onChanged: (double value) {
    setState(() {
    _currentSliderValue = value;
    });
    },
    )
    ,ElevatedButton(

    onPressed: SubmitQuestion, child: Text('Submit'))
    ]
    ) : Result(_sum,returnRquiz)
    //}
      )
    );

  }
}

