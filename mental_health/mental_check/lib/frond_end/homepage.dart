import 'dart:html';

import 'package:flutter/material.dart';
import '../main.dart';
// import 'login_screen.dart';
import 'register_screen.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text('Hello'),
        ),
        // body:Text('Hello World')
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.lightGreen,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.grey,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.orange,
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 11),
                  height: 200,
                  // width: 200,
                  color: Colors.blue,
                )
              ],
            ),
          ),
        ));
  }
}
