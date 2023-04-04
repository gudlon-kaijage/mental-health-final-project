import 'package:flutter/material.dart';
import '../main.dart';
import '../screen/home_screen.dart';
import '../screen/appbar.dart';

class PositivePage extends StatefulWidget {
  @override
  _PositivePageState createState() => _PositivePageState();
}

class _PositivePageState extends State<PositivePage> {
  final List<String> titles = [
    'Positive steps details',
    'Be kind to yourself',
    'Exercise regularly',
    'Take up a hobby and/or learn a new skill',
    'Have some fun and/or be creative',
    'Help others',
    'Relax',
    'Eat healthily',
    'Balance sleep',
    'Connect with others',
    'Beware of drink and drugs',
    'See the bigger picture',
    'Accepting "It is how it is"',
  ];

  final List<dynamic> paragraphs = [
    [
      'Have a look at some positive steps you can take to move towards feeling better both inside and outside yourself. Start off small and pick just one or two of the suggestions to work on and then move on to more as you feel confident. Give one of them a try, you might even really enjoy it!'
    ],
    [
      'Our culture, genes, religion, upbringing, education, gender, sexuality, beliefs and life experiences make us who we are. We all have bad days.',
      'Be kind to yourself. encourage rather than criticize yourself. Treat yourself the way you would treat a friend in the same situation.'
    ],
    [
      'Being active helps lift our mood, reduces stress and anxiety, improves physical health and gives us more energy.',
      'Get outside, preferably in a green space or near water',
      'Find an activity you enjoy doing and just do it.',
    ],
    [
      'The physical response to stress is caused by the body\'s adrenaline response - the body\'s alarm signal and survival mechanism when faced with a threat.',
      'You may experience sensations including:',
      '• Heart racing\n• Breathing faster\n• Tense muscles\n• Hot, sweaty\n• Headache\n• Have difficulty concentrating\n• Being forgetful\n• Feeling agigated or restless\n• Having bladder or bowel problems',
    ],
    [
      'Increase your confidence and interest, meet others or prepare for finding work.'
    ],
    [
      'Having fun or being creative helps us feel better and increases our confidence.',
      'Enjoy youself!'
    ],
    [
      'Get involved with a community project, charity work or simply help out someone you know.',
      'As well as benefiting others, you\'ll be doing something worthwhile which will help you feel better about yourself.'
    ],
    [
      'Make time for yourself. Allow yorself to chill out and relax. Find something that suits you - different things work for different people.',
      'Breathe...imagine a balloon in your belly, inflating and deflating as you breathe in and out.'
    ],
    [
      'Eat regularly and eat healthily, Try and eat fruit and vegetables, drink plenty of water and avoid high fat and sugary foods.'
    ],
    [
      'Get into healthy sleep routine - including going to bed and getting up at the same time each day.'
    ],
    [
      'Stay in touch with family and friends - make regular and frequent contact with them.'
    ],
    [
      'Avoid using alcohol or non-prescribed drugs to help you cope - it will only add to your problems.'
    ],
    [
      'We all give different meanings to situations and see things from our point of view. Broaden out your perspective and consider the bigger picture (the helicopter view)',
      '• What meaning am I giving this?\n• Is this fact or opinion?\n• How would others see it?\n• Is there another way of looking at this?\n• How important is it, or will it be in a year\'s time?\n• What can I do right now that will help most?'
    ],
    [
      'We tend to fight against distressing thoughts and feelings, but we can learn to just notice them and give up that struggle.',
      'Some situations we just can\'t change.',
      'We can surf those waves rather than try to stop them.',
      'Allow those thoughts and sensations just to be - they will pass.',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Positive Steps'),
        actions: <Widget>[
          AppMenu(),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              for (int i = 0; i < titles.length; i++)
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 20.0),
                    Container(
                      padding: EdgeInsets.all(10.0),
                      color: Colors.white,
                      child: Text(
                        titles[i],
                        style: TextStyle(
                          color: Colors.blue,
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
