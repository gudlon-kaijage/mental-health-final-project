import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp()); // draws something to the screen
// }

void main() => runApp(MyApp());

// MyApp(class)
//Widget(class), build is mthd(function) n context(arguments)
//MaterialApp(class) n Text(class)
class MyApp extends StatelessWidget {
  var questionIndex = 0;

  void answer() {
    questionIndex = questionIndex + 1;
    print(questionIndex);
    // print('the answer');
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'Wat\'s is ur favorite color',
      'Wat\'s ur favorite animal',
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My Application'),
        ),
        //list => questions[0],), OR questions.elementAt(0),),
        body: Column(
          children: [
            Text(
              questions[questionIndex],
            ),
            RaisedButton(
              child: Text('Ans 1'),
              onPressed: answer,
            ),
            RaisedButton(
              child: Text('Ans 2'),
              onPressed: () => print('answer 2'),
            ),
            RaisedButton(
              child: Text('Ans 3'),
              onPressed: () {
                //...
                print('answer 3');
              },
            ),
          ],
        ),
      ),
    );
  }
}

RaisedButton({required Text child, required onPressed}) {}
