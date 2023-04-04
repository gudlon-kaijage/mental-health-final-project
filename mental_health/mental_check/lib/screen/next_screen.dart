import 'package:flutter/material.dart';
import '../main.dart';
import '../screen/emotion_screen.dart';
import '../screen/home_screen.dart';
import '../screen/student_screen.dart';
import '../screen/appbar.dart';

class NextPage extends StatefulWidget {
  @override
  _NextPageState createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Next Page'),
        actions: <Widget>[
          AppMenu(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is a paragraph at the center.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            // SizedBox(height: 24.0),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StudentsPage()),
                );
              },
              child: Text(
                'Students',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                ),
              ),
            ),
            // SizedBox(height: 12.0),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EmotionsPage()),
                );
              },
              child: Text(
                'Adults',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
