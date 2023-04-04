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
            _buildContainer("Container 1"),
            _buildContainer("Container 2"),
            _buildContainer("Container 3"),
            _buildContainer("Container 4"),
            _buildContainer("Container 5"),
            _buildContainer("Container 6"),
            _buildContainer("Container 7"),
            _buildContainer("Container 8"),
            _buildContainer("Container 9"),
            _buildContainer("Container 10"),
          ],
        ),
      ),
    );
  }

  Widget _buildContainer(String containerName) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blueAccent,
          width: 2.0,
        ),
      ),
      child: Column(
        children: <Widget>[
          Text(
            containerName,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
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
    );
  }
}
