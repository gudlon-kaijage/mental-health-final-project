import 'package:flutter/material.dart';
import '../main.dart';
import '../screen/home_screen.dart';
import '../screen/appbar.dart';

class ThinkingPage extends StatefulWidget {
  @override
  _ThinkingPageState createState() => _ThinkingPageState();
}

class _ThinkingPageState extends State<ThinkingPage> {
  final List<String> titles = [
    'Thinking patterns details',
    'Mind reading',
    'Mental filter',
    'Prediction',
    'Compare & despair',
    'Shoulds & musts',
    'Critical self',
    'Black & white thinking',
    'Catastrophizing',
    'Emotional Reasoning',
    'Mountains & molehills',
    'Evaluations & judgments',
    'Bad memories',
  ];

  final List<dynamic> paragraphs = [
    [
      'Over the years we tend to get into unhelpful thinking habits such as those described here. We might favor some over others. and there might be some that seem far too familiar. Once you can identify your unhelpful thinking styles, you can start to notice them - they very often occur just before or during distressing situations.',
      'Once you can notice them, then that can help you to challenge or distance yourself from those thoughts, and see the situation in a different and more helpful way.'
    ],
    [
      'Assuming we know what others are thinking (usually about us).',
      'Ask yourself',
      'Am I assuming I know what others are thinking?',
      'What\'s the evidence?',
      'Those are my own thoughts, not theirs. Is there another, more balanced way of looking at it?'
    ],
    [
      'When we notice only what our "filter" allows us to notice and we dismiss anything that doesn\'t "fit". Like looking through dark glasses or only listening to the negatives whilst anything more positive or realistic is idnored or dismissed.',
      'Ask yourself',
      'Am I only noticing the bad stuff?',
      'Am I filtering out the positives?',
      'Am I wearing those "gloomy specs"?',
      'What would be more realistic?'
    ],
    [
      'Believing we know what\'s going tohappen in the future and treating it as a certainty.',
      'Ask yourself',
      'Am I thinking that I can predict the future?',
      'How likely is it that might really happen?'
    ],
    [
      'Seeing only the good and positive aspects in others and comparing ourselves negatively against them.',
      'Ask yourself',
      'Am I doing that "compare and despair" thing?',
      'What would be more balanced and helpful way of looking at it?'
    ],
    [
      'Thinking or saying "I should" (or shouldn\'t) and "I must", therefore putting pressure on ourselves and setting up unrealistic expectations',
      'Ask yourself',
      'Am I putting more pressure on myself, setting up expectations of myself that are almost impossible?',
      'What would be more realistic?'
    ],
    [
      'Putting youself down, being too critical on yourself or blaming yourself for events or situations that are not totally your responsibility.',
      'Ask yourself',
      'There I go, that internal bully\'s at it again. Would most people who really know me say that about me?',
      'Is this something that I am totally responsible for?',
    ],
    [
      'Believing that something or someone can be only good or bad, right or wrong, rather than anything in-between or "shades of grey".',
      'Ask yourself',
      'Things aren\'t either totally white or totally black - there are shades of grey. Where is this on the spectrum?'
    ],
    [
      'Imagining and believing that the worst possible thing will happen in a situation, when realistically things would turn out much better.',
      'Ask yourself',
      'Okay, thinking that the worst possible thing will definitely happen isn\'t really helpful right now. What is the most likely to happen?'
    ],
    [
      'I feel bad so it must be bad! I feel anxious so I must be in danger.',
      'Remember',
      'Just because it feels bad, doesn\'t necessarily mean it is bad',
      'My feelings are just a reaction to my thoughts - and thoughts are just automatic brain reflexes.'
    ],
    [
      'Exaggerating the risk of danger, or the negatives and minimizing the odds of things are most likely to turn out or minimizing the positives.',
      'Ask yourself',
      'Am I exggerating the risk of danger, and minimizing the evidence that it\'s most likely to be okay?',
      'Or am I exaggerating the negative and minimizing the positives?',
      'How would someone else see it?',
      'What is the bigger picture?'
    ],
    [
      'Making judgments about ourselves, others or things that happen when we have no evidence to back up those ideas.',
      'Ask yourself',
      'I am making an evaluation about the situation or person. it is how i make sense of the world, but that doesn\'t mean my judgments are always right or helpful. Is there another perspective?'
    ],
    [
      'Sometimes events trigger memories of being hurt in the past, leading us to believe that the danger is here and now rather than in the past, causing us to feel down, upset, stressed or worried right now.',
      'Remember',
      'This is just a reminder of the past. That was then and this is now.',
      'Even though this memory makes me feel upset, it\'s not actually happening again right now.'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Thinking Patterns'),
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
