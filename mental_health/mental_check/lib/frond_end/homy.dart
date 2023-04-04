import 'package:flutter/material.dart';

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
            _buildGradientBoxContainer(
              "Container 1",
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
            _buildGradientBoxContainer(
              "Container 2",
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
            _buildGradientBoxContainer(
              "Container 3",
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
          Align(
            alignment: Alignment.center,
            child: Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: children,
            ),
          ),
        ],
      ),
    );
  }
}
