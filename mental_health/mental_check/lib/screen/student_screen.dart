import 'package:flutter/material.dart';
import '../screen/appbar.dart';
import '../screen/next_screen.dart';

class StudentsPage extends StatefulWidget {
  @override
  _StudentsPageState createState() => _StudentsPageState();
}

class _StudentsPageState extends State<StudentsPage> {
  int _selectedIndex = 0;
  final List<String> _emotions = ['Happy', 'Sad', 'Angry', 'Excited'];

  void _onItemSelected(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Student emotion Page'),
        actions: <Widget>[
          AppMenu(),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'How are you feeling today?',
              style: TextStyle(
                fontSize: 24.0,
              ),
            ),
            SizedBox(height: 24.0),
            Wrap(
              spacing: 12.0,
              children: List<Widget>.generate(
                _emotions.length,
                (index) => ChoiceChip(
                  label: Text(_emotions[index]),
                  selected: _selectedIndex == index,
                  onSelected: (selected) => _onItemSelected(index),
                ),
              ),
            ),
            SizedBox(height: 24.0),
            Text(
              'Selected emotion: ${_emotions[_selectedIndex]}',
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
