import 'package:flutter/material.dart';
import '../main.dart';
import '../screen/help_screen.dart';
import '../screen/home_screen.dart';
import '../screen/appbar.dart';

class AnxietyPage extends StatefulWidget {
  @override
  _AnxietyPageState createState() => _AnxietyPageState();
}

class _AnxietyPageState extends State<AnxietyPage> {
  final List<String> titles = [
    'Anxiety',
    'Thoughts',
    'Physical Sensations',
    'Behaviors',
    'Identify your triggers',
    'Doing things differently',
    'When feeling anxious',
    'Dealing with physical sensation',
  ];

  final List<dynamic> paragraphs = [
    [
      'Anxiety is the body\'s way of responding to being in danger. Adrenaline is rushed into our bloodstram to enable us to run away or fight. This happens whether the danger is real or not. it is the body\'s alarm and survival mechanism.',
      'it works so well, that it often kicks in when it\'s not needed - when the danger is in our heads rather than in reality. We think we are in danger, so that\'s enough to trigger the system to go, go, go! People who get anxious tend to get into scanning mode - where they\'re constantly on the lookout for danger, hyper-alert to any of the signals and make it more likely that the alarm system will be activated.'
    ],
    [
      'Thoughts that often occur',
      '• I am in danger right now\n• The worst possible scenario is going to happen\n• I won\'t be able to cope with it.'
    ],
    [
      'When there is a real or when we believe there is a real, threat or danger, our bogy\'s automatic survival mechanism kicks in very quickly. This helps to energize us to fight or run away ("fight or flight" response. The action urge associated with anxiety is to escape or avoid.',
      'We will therefore notice lots of physicel sensations, which might include:',
      '• Heart racing - This helps to take the blood to where it is most needed - he legs so that we can hit out(flight); the arms so that we can hit out (fight); the lungs to increase stamins. At the same time blood is taken from the places it is not needed for example fingers, toes and skin. These changes cause tingling, coldness and numbness.\n• Breathing gets faster -  This helps the bloodstream to carry oxygen to the arms, legs and lungs. This will give us more power. The side effects may include chest pain, breathlessnes and a coking feeling. As there is a slight drop in the blood and oxygen being sent to he bran we may feel dizzy or light headed, we may experiance blurred vision.\n• Muscles tense and prepare -  The large skeletal musces tense and create power, this may cause pain, aching and shaking.\n• Sweating - Sewating helps to cool the muscles and the body. It helps to stop them from overheating.\n• Pupils dilate -  This lets more light into the eyes so that overall vision improves. Side effects may include sensitivity tolight or spots before our eyes.\n• Digestive system  slows down - These are not important while in danger and so are slowed down then the saved energy goes to where it is most needed. Side effects may iclude nausea, butterflies and a dry mouth.\n• More alert - We will be concentrating on looking for danger, much les able to concentrate on anything else. We\'re waiting for something to happen.',
    ],
    [
      'behaviors might include:',
      '• Avoiding people or places.\n• Not going out.\n• Going to certain places at a certain time, eg; shopping at smaller shops, at less busy times.\n• Only going somewhere with someone else.\n• Escape, leave early.\n• Going to the feared situation but use coping behaviours to get you through sych as:\n• Self talk.\n• Holoding a drink\n• Smoking more\n• Fiddling with clothes or handbag\n• Avoiding eye contact with others\n• Having an escape plan, medication',
      'These are called "safety behaviors".',
      'Safety behaviors can also help to keep your anxiety going. Whilst you depend on them to help you cope, you don\'t get to find out that without them, the anxiety would reduce and go away on it\'s own.',
      'Whilst avoiding people or situations might help you feell better at that time, it doesn\'t make your anxiety any better over a longer period. if you are frightened that your anxiety will make you pass out or vomit i the supermarket aisle, you won\'t actually happen, because you don\'t go. So the belief that will happen remains along with anxiety.',
    ],
    [
      'What or when are the times you are more likely to get anxious? If you can see the patterns, then maybe you can do something about those situations and do something different.',
      '• Certain places?\n• Certain people?\n• Seeing certain things?\n• Hearing certain things?\n• Hinking ahead to certain situations?',
    ],
    [
      'If avoding situations and using safety behaviors helps to maintain our anxiety over the long-term, then it makes sense that learning to confront itmight be uncomfortable in the short term, but it will help us take control and this will help us feel better over time.',
      'Make a plan to gradually do the things you normally avoid. For instance; if you normally avoid going out to big social events at work, then start with small dinner at a restaurant where you feel more comfotable with few close collegues - not the annual Christmas party! Whilst it will feel uncomfortable, you wil learn that you can enjoy these events and anxious feelings will gradually go away. You can use breathing techniques or self-talk(challenge your unhelpful thoughts and repeating more realistic thoughts) to get you through these times.',
      'If you normally depend on "safety behaviors" to help you cope, then lis them in order of importance, then start by dropping or not doing the least important and gradually work your way up over time.',
    ],
    [
      '• STOP! Pause, take a breath, don\'t react automatically.\n• Ask youself:\n• What am I reacting to?\n• What is it that I think is going to happen here?\n• Is this fact or opinion?\n• What\'s the worst (and best) thing that could happen? What\'s most likely to happen?\n• Am I blowing things out of proportion?\n• How important is this really? How important will it be in 6 months time?\n• Am I overestimating the danger?\n• Am I underestimating my ability to cope?\n• Am I mind-reading what others might be thinking?\n• Am I mind-reading what others might be thinking?\n• Am I mind-reading what others might be thinking?\n• Am I believing I can predict the future?\n• Is there another way of looking at this?\n• What advice would I give someone else in this situation?\n• Am I putting more pressure on myself?\n• Just because I feel bad, doesn\'t mean things really are bad?\n• What do I want or need from this person or situation? What do they want or need from me? Is there a compromise?\n• What would be the consequences of responding the way I usually do?\n• Is there another way of dealing with this? What would be the most helpful and effective action to take? (for me, for the situation, for others)\n• Visualize yourself successfully coping with the situation that you feel anxious about. See it through to a successful completion.',
    ],
    [
      '• Counteract the body\'s adrenaline response - it\'s readiness for action, by using that energy in a health way.\n• Practice calming or mindful brathing - this one act alone will help reduce the physicel sensations, emotions and intensity of thoughts.\n• Visualization: Breathe in blue (for calm) and breathe out red.\n• Go for walk, run or cycle, or maybe do some gardening or housework.',
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anxiety Page'),
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
