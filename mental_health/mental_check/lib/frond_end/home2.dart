import 'dart:html';

import 'package:flutter/material.dart';
import '../main.dart';
import '../screen/login_screen.dart';
import '../screen/register_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildGradientContainer(
              [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Button 1"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Button 2"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Button 3"),
                ),
              ],
            ),
            _buildGradientContainer(
              [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Button 1"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Button 2"),
                ),
              ],
            ),
            _buildGradientContainer(
              [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Button 1"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Button 2"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildGradientContainer(List<Widget> children) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.green],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: children.length == 6
          ? Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: children,
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: children,
            ),
    );
  }
}
