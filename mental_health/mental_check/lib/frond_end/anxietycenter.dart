import 'package:flutter/material.dart';
import '../main.dart';
import '../screen/help_screen.dart';
import '../screen/home_screen.dart';

class AnxietyPage extends StatefulWidget {
  @override
  _AnxietyPageState createState() => _AnxietyPageState();
}

class _AnxietyPageState extends State<AnxietyPage> {
  final List<String> titles = [
    'Title 1',
    'Title 2',
    'Title 3',
    'Title 4',
    'Title 5',
    'Title 6',
    'Title 7',
    'Title 8',
  ];

  final List<dynamic> paragraphs = [
    ['Paragraph 1', 'Paragraph 2'],
    ['Paragraph 1', '• Bullet 1\n• Bullet 2\n• Bullet 3'],
    [
      'Paragraph 1',
      'Paragraph 2',
      '• Bullet 1\n• Bullet 2\n• Bullet 3\n• Bullet 4\n• Bullet 5\n• Bullet 6\n• Bullet 7',
    ],
    [
      'Paragraph 1',
      '• Bullet 1\n• Bullet 2\n• Bullet 3\n• Bullet 4\n• Bullet 5\n• Bullet 6\n• Bullet 7\n• Bullet 8\n• Bullet 9\n• Bullet 10\n• Bullet 11\n• Bullet 12',
      'Additional paragraph 1',
      'Additional paragraph 2',
      'Additional paragraph 3',
      'Additional paragraph 4',
    ],
    [
      'Paragraph 1',
      '• Bullet 1\n• Bullet 2\n• Bullet 3\n• Bullet 4\n• Bullet 5',
    ],
    [
      'Paragraph 1',
      'Paragraph 2',
      'Paragraph 3',
    ],
    [
      '• Bullet 1\n• Bullet 2\n• Bullet 3\n• Bullet 4\n• Bullet 5\n• Bullet 6\n• Bullet 7\n• Bullet 8\n• Bullet 9\n• Bullet 10',
    ],
    [
      '• Bullet 1\n• Bullet 2\n• Bullet 3\n• Bullet 4\n• Bullet 5',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anxiety Page'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              for (int i = 0; i < titles.length; i++)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.0),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.blue,
                      child: Text(
                        titles[i],
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(height: 10.0),
                    for (int j = 0; j < paragraphs[i].length; j++)
                      Padding(
                        padding: EdgeInsets.symmetric(
                          vertical: 5.0,
                          horizontal: 10.0,
                        ),
                        child: Text(
                          paragraphs[i][j],
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 16.0),
                        ),
                      ),
                  ],
                ),
            ],
          ),
        ),
      ),
    );
  }
}
