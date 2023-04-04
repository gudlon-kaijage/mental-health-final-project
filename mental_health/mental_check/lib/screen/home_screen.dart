// import 'dart:html';
import 'package:flutter/material.dart';
import '../main.dart';
import '../screen/help_screen.dart';
import '../screen/stress_screen.dart';
import '../screen/anxiety_screen.dart';
import '../screen/depression_screen.dart';
import '../screen/next_screen.dart';
import '../screen/appbar.dart';
import '../screen/positive_screen.dart';
import '../screen/thinking_screen.dart';
import '../screen/worries_screen.dart';
// import '../screen/stress_screen.dart';

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
        actions: <Widget>[
          AppMenu(),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            _buildGradientBoxContainer(
              "Help Right Now",
              [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => NextPage()),
                    );
                  },
                  child: Text("Emotion check"),
                ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: Text("Button 2"),
                // ),
                // ElevatedButton(
                //   onPressed: () {},
                //   child: Text("Button 3"),
                // ),
              ],
            ),
            _buildGradientBoxContainer(
              "Mental health information",
              [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => AnxietyPage()),
                    );
                  },
                  child: Text("Anxiety"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StressPage()),
                    );
                  },
                  child: Text("Stress"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => DepressionPage()),
                    );
                  },
                  child: Text("Depression"),
                ),
              ],
            ),
            _buildGradientBoxContainer(
              "Coping Strategies",
              [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ThinkingPage()),
                    );
                  },
                  child: Text("Thinking Patterns"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => PositivePage()),
                    );
                  },
                  child: Text("Positive Steps"),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WorriesPage()),
                    );
                  },
                  child: Text("Manage Worries"),
                ),
              ],
            ),
            _buildGradientBoxContainer(
              "Help",
              [
                ElevatedButton(
                  onPressed: () {},
                  child: Text("About us"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Contact us"),
                ),
                ElevatedButton(
                  onPressed: () {},
                  child: Text("Privacy policy"),
                ),
              ],
            ),
            // _buildGradientBoxContainer(
            //   "Container 3",
            //   [
            //     ElevatedButton(
            //       onPressed: () {},
            //       child: Text("Button 1"),
            //     ),
            //     ElevatedButton(
            //       onPressed: () {},
            //       child: Text("Button 2"),
            //     ),
            //     ElevatedButton(
            //       onPressed: () {},
            //       child: Text("Button 3"),
            //     ),
            //   ],
            // ),
          ],
        ),
      ),
    );
  }

  Widget _buildGradientBoxContainer(String title, List<Widget> children) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 900,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.green],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Stack(
        children: <Widget>[
          // SizedBox(height: 16),
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5.0),
              child: Text(
                title,
                // textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 5,
            left: 10,
            right: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: children
                  .map((child) => Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5.0),
                        child: child,
                      ))
                  .toList(),
            ),
          ),
          // Padding(
          //   padding: EdgeInsets.all(10),
          //   child: Column(
          //     mainAxisAlignment: MainAxisAlignment.center,
          //     children: children,
          //   ),
          // ),
        ],
      ),
    );
  }
}
