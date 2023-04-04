import 'package:flutter/material.dart';
import '../main.dart';
import '../screen/help_screen.dart';
import '../screen/home_screen.dart';
import '../screen/appbar.dart';

class DepressionPage extends StatefulWidget {
  @override
  _DepressionPageState createState() => _DepressionPageState();
}

class _DepressionPageState extends State<DepressionPage> {
  final List<String> titles = [
    'Depression',
    'Thoughts',
    'Physical Sensations',
    'Behavior',
    'Breaking the cycle',
    'Doing things differently',
    'Thinking differently',
  ];

  final List<dynamic> paragraphs = [
    [
      'Depression can happen to anyone - and does happen to one in four of us over our lifetimes. Different factors that make it more likely to happen, include biological make-up, upbringing, or reaction to life events. What keeps it going though, is how we deal with those things. The way we think and what we do affects the way we feel. Depression is often accompanied by other feelings such as guilt, shame, anger and anxiety.'
    ],
    [
      'People who are depressed tend to think very negatively about themselves, the future and the world around them. It can be like seeing life through "gloomy glasses":',
      '• Everything is hopless - nothing can change\n• I\'m useless, worthless\n• It\'s all my fault\n• The world is a terrible place - everything goes wrong',
      'We can dwell on these thoughts repeatedly mulling over things, asking ourselves why, thinking regretful things about the past, what we should or shouldn\'t have done.',
    ],
    [
      'You may experience:',
      '• Tiredness, fatigue, lethargy\n• Difficulty concentrating or remembering\n• Sleep changes (sleep more or less)\n• Eating changes (eat more or less)\n• Lose interest in hobbies, activities, sex',
    ],
    [
      'Because of the tiredness, difficulty sleeping and eating, and negative style of thinking, we tend to do less and less. We stop doing the things we used to so and enjoy. It could get so bad that we can\'t even go to work or do things at home. We want to stay in bed or stay at home doing very little. We might isolate ourselves from friends and family.'
    ],
    [
      'When we are depressed, we can feel particularly tired and lack any motivation to do anything. Just increasing our activity and exercise levels can have an enormous impact on our mood as it stimulates the body to produce natural anti-depressants. The benefits include:',
      '• Making us feel better about ourselves\n• Making us fel less tired\n• Motivating us to do more\n• Improving our ability to think more clearly\n• Helping us think about something other than focusing on our unhelpful thoughts\n• Using up the adrenaline resources created by anxiety and anger\n• Giving us a sense of achievement\n• Enjoyment\n• Being with other people\n• Stimulating the body to produce natural anti-depressants\n• Making us generally more healthy\n• Stimulating our appetite',
      'Schedule activities that give you a sense of:',
      '• Achievement\n• Closeness to others\n• Enjoyment',
      'Extra tips:',
      '• Use an activity diary\n• It\'s important to get a healthy balance of activities which give you a sense of achivement, enjoyment and being close to others. Choose activities which are important to you, have positive meanings, or are purposeful, and you might want to plan rest periods too.\n• Keep your goals realistic -  set achievable limits. Eg, aim to walk for 15 minutes rather than a half-marathan, or wash the dishes rather than spring clean the whole house. Don\'t set yourself up to fail! You can build up your activity over time.\n• Reward yourself! whwen you are doing well or remembering to pace yourself, doing more of what helps, or doing less of what doesn\'t - give yourself a treat, a pat on the back.',
    ],
    [
      'If lack of activity and tiredness is helping to maintain our negative thinking and therefore keeping us depressed, then doing more (in spite of feeling tired and depressed) will help us feel better.',
      '• Do something different (to what you normally do)\n• Pause, take a breath\n• Mindfulness - learn mindful breathing\n• Focus your attention fully on another activity - mindful activity\n• Relaxation techniques - try lots and find one that works for you\n• Put on some music - sing and dance along, or just listen attentively (use music that is likely to help you feel your desired emotion - avoid sad songs if you are depressed)\n• Help others\n• Be with others - contact a friend, visit family\n• Talk to someone\n• Grounding techniques -  look around you, what do you see, hear, smell, sense? Hold a comforting object\n• Physical exercise - walk, swim, go to the gym, cycle\n• Engage in a hobby or other interest - if you don\'t have one, find one! What have you enjoyed in the past? What have you sometimes thought about doing but not got around to?\n• Write down you thoughts and feelings - get them out of your head\n• Just take one step at a time - don\'t plan too far ahead\n• Pamper yourself - do something you really enjoy or do something relaxing\n• Positive self-talk - encourage yourself, tell yourself: I can do this, I am strong and capable - find an affirmation that works for you (even if you don\'t believe it at first!). Write it down and memorize it when you will need it\n• Do something creative - make a box of items that remind you to use the techniques that help or put photos on the paper or write and decorate a list\n• Use a safe place imagery\n• Tell yourself: "This will pass, it\'s only temporary". "I have got through this before, I can do it now". When we are going through a tunnel and become fearful of being trapped, there\'s no point in stopping - we just have to carry on in order to reach the end of the tunnel. That light is there and it\'s waiting\n• Visualize yourself enjoying doing the things you used to enjoy doing or would like to enjoy doing and successfully doing the things you need to do.',
    ],
    // [
    //   'Paragraph 1',
    //   'Paragraph 2',
    //   'Paragraph 3',
    // ],
    [
      '• STOP! Pause, take a breath\n• Ask yourself\n• What am I reacting to? What have I been thinking about here?\n• Am I blowing things out of proportion?\n• Is this fact or opinion?\n• How important is this really? How important will it be in 6 months time?\n• Am I expecting something from this person or situation that is unrealistic?\n• What\'s the worst (and the best) that could happen? What\'s most likely to happen?\n• Am I using that negative filter? Those glooy specs? Is there another way of looking at it?\n• What advice would I give to someone else in this situation?\n• Am I spending time ruminating about the past or worrying about the future? What could I do right now that would help me feel better?\n• Am I putting more pressure on myself, setting up expectations of myself that are most impossible? What would be more realistic?\n• Am I jumping to conclusions about what this person meant? Am I misreading between the lines? Is it possible that they didn\'t mean that?\n• What do I want or need from this person or situation? What do they want or need from me? Is there a compromise?\n• Am I just focusing on the worst possible thing that could happen? What would be more realistic?\n• Is there another way of looking at this?\n• Am I exaggerating the good aspects of others and putting myself down? Or am I exaggerating the negative and minimizing the positives? How would someone elsesee it? What\'s the bigger picture?\n• Things aren\'t either totally white or rotally black - there are shades of grey. Where is this on the spectrum?\n• This is just a reminder of the past. That was then and this is now. Even though this memory makes me feel upset, it\'s not actually happening again now\n• What would be the consequences of doing what I normally do?\n• Is there another way of dealing with this? What would be the most helpful and effective action to take? (for me, for the situation, for the other people)\n• Visualization: Breath in orange (for positive energy) and breath out blue/ black (for negative energy).',
    ],
    // [
    //   '• Bullet 1\n• Bullet 2\n• Bullet 3\n• Bullet 4\n• Bullet 5',
    // ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Depression Page'),
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
