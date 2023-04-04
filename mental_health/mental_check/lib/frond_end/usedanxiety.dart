import 'package:flutter/material.dart';
import '../main.dart';
import '../screen/help_screen.dart';
import '../screen/home_screen.dart';

class AnxietyPage extends StatefulWidget {
  @override
  _AnxietyPageState createState() => _AnxietyPageState();
}

class _AnxietyPageState extends State<AnxietyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Anxiety Page"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _buildSection("Title 1", "Paragraph 1"),
            _buildSection("Title 2", "Paragraph 2"),
            _buildSection("Title 3", "Paragraph 3"),
            _buildSection("Title 4", "Paragraph 4"),
            _buildSection("Title 5", "Paragraph 5"),
            _buildSection("Title 6", "Paragraph 6"),
            _buildSection("Title 7", "Paragraph 7"),
            _buildSection("Title 8", "Paragraph 8"),
          ],
        ),
      ),
    );
  }

  Widget _buildSection(String title, String paragraph) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 16),
          Text(
            paragraph,
            style: TextStyle(
              fontSize: 18,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
