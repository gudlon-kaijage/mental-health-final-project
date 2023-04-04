import 'package:flutter/material.dart';
import '../main.dart';
import '../screen/help_screen.dart';
import '../screen/home_screen.dart';
import '../screen/appbar.dart';

class StressPage extends StatefulWidget {
  @override
  _StressPageState createState() => _StressPageState();
}

class _StressPageState extends State<StressPage> {
  final List<String> titles = [
    'Stress',
    'Thoughts',
    'Feelings',
    'Physical Sensations',
    'Behavior',
    'Identify your triggers',
    'Doing things differently',
    'Thinking differently',
  ];

  final List<dynamic> paragraphs = [
    [
      'Stress is our emotional and physical response to pressure. That pressure can arise from external factors including life events, illness (ourselves or someone close to us) living conditions, work, home and famil, study, lack of some necessity, or the demands we place on ourselves.',
      'Even those events which we see as enjoyable can be stressful such as holidays, moving home, starting a better job, pregancy, parenthood, Christmas etc.'
    ],
    [
      'You may have thoughts such as:',
      '• This is too much - I can\'t cope!\n• It\'s unfair. Someone should be helping me.\n• I haven\'t got enough time\n• I\'ll never finish\n• I must get this done...'
    ],
    [
      'You may feel:',
      '• Irritable\n• Bad tempered\n• Anxious\n• Impatient\n• Angry\n• Depressed\n• Hopeless',
    ],
    [
      'The physical response to stress is caused by the body\'s adrenaline response - the body\'s alarm signal and survival mechanism when faced with a threat.',
      'You may experience sensations including:',
      '• Heart racing\n• Breathing faster\n• Tense muscles\n• Hot, sweaty\n• Headache\n• Have difficulty concentrating\n• Being forgetful\n• Feeling agigated or restless\n• Having bladder or bowel problems',
    ],
    [
      'You may:',
      '• Be unable to settle, constantly busy, rushing about\n• Have lots of things on the go, but don\'t finish them\n• Begin shouting or arguing\n• Eat more (or less)\n• Drink/smoke/use drugs more to cope\n• Feel the urge to cry',
    ],
    [
      'Try your best to identify what makes you stressed.',
      'For example, ask youself:',
      '• Where am I when I\'m feeling stressed? What am I doing? Who am I with?\n• What helpful changes could i make?\n• What is within my control?',
      'Even if there is little you can do about some situations, maybe making some small changes - in routine,  in the way you handle things, doing things differently, taking time out, thinking about it in adifferent way, in getting help, seeking advice - could make all the difference.',
    ],
    [
      '• Do something different (to what you normally do)\n• Make time for yourself each day to have some relaxation, fun, and enjoyment. Create a healthy balance - allow time for activities which give you a sense ofachievement, those that give a sense of closeness to others and of a sense of enjoyment. When stressed, it\'s often the case that we spend more time doing things that help us achieve but less of enjoyment and closeness to others. Aim for healthy balance. You can use your diary to keep track of the things you did and how you felt throughout that day\n• Help others\n• Be with others - contact a friend, visit family\n• Talk to someone\n• Practice grounding techniques - look around you, What do you see, hear, smell, sense? Hold a comforting object\n• Physical exercise - walk, swim, go to the gym, cycle (take the stairs instead of the lift, getb off the bus a stop early)\n• Engage in hobby or other interest - if you don\'thave one,find one! What have you enjoyed in the past? What have you sometimes thought about doing but not got around to?\n• Limit your responsibilities - it\'s okay to say no\n• Write down your thoughts and feelings - get them out of you head\n• Just take one step at a time - don\'t plan too far ahead\n• Use positive self-talk - encourage yourself, tell youself: "I can do this, I am strong and capable" - find an affirmation that works for you (even if you don\'t believe it at first!). Add it to the affirmations section of the app and you can look at it when you need it.\n• Do something creative - make a box of items that remaind you to use the techniques that help or put photos on the paper or write and decorate a list\n• Use imagery eg, to relax and bring about future goals\n• Tell youself: "This will pass, it\'s only temporary". "I\'ve got through this before, I can do it now". When we are going through a tunnel and become fearful of being trapped, there\'s no point in stopping - we just have to carry on in order to reach the end of the tunnel\n• Learn to communicate assertively (rather than passively or aggressively)\n• Eat a healthy balanced diet, with plenty of fruit and vegetables\n• Drink\n• Pamper yourself - do something you really enjoy or do something relaxing. You deserve it.',
    ],
    [
      'Stop! Pause, take a breath, dont\'t react automatically',
      'Ask yourself:',
      '• What am I reacting to?\n• What is it taht I think is going to happen here?\n• Is this fact or opinion?\n• What is the worst (and the best) taht could happen? What is the most likely to happen?\n• How helpfu; is it for me to think this way?\n• Am I blowing things out of proportion?\n• Is it worth it?\n• How important is this really? How important will it be in 6 months time?\n• What meaning am I giving this situation?\n• Am I overestimating the threat?\n• Am I underestimating my ability to cope?\n• Have I got my "stress-head" on?\n• What do I look like to other people? How am I affecting them?\n• Am I mind-reading what others might be thinking?\n• Am I believing I can predict the future?\n• Is there another way of looking at this?\n• What advice would I give someone else in this situation?\n• Am I putting more pressure on myself?\n• Just beacause I feel bad, doesn\'t mean things really are bad?\n• Can I do things any differently here?\n• How much can I control in this situation? What is outside of the control?\n• What changes (however small) can I make to those things that I am able to control?\n• What do I want or need from this person or situation? What do they want or need from me? Is there a compromise?\n• WHt would be the consequences of responding the way I usually do?\n• Is there another way of dealing with this?\n• What would be the most helpful and effective action to take? (for me, for the situation, for the other person).',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stress Page'),
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
