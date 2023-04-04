import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp()); // draws something to the screen
// }

void main() => runApp(MyApplication());

// MyApp(class)
//Widget(class), build is mthd(function) n context(arguments)
//MaterialApp(class) n Text(class)

//when the external data changes StatefulWidget can be re-created
class MyApplication extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    // throw UnimplementedError();
    return MyApplicationState();
  }
}

//connecting MyApplication and MyApplicationState
class MyApplicationState extends State<MyApplication> {
  var questionIndex = 0;

  void answer() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
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
