import 'package:flutter/material.dart';
import '../main.dart';
import '../screen/home_screen.dart';
import '../screen/appbar.dart';

class WorriesPage extends StatefulWidget {
  @override
  _WorriesPageState createState() => _WorriesPageState();
}

class _WorriesPageState extends State<WorriesPage> {
  final List<String> titles = [
    'Manage worries details',
    'Repeat your worry until you are bored silly',
    'Make it worse',
    'Don\'t fight the craziness',
    'Recognize false alarms',
    'Turn your anxiety into a movie',
    'Set aside worry time',
    'Take your hand off the horn',
    'Breath it out',
    'Make peace with time',
    'Don\'t let your worries stop you from living your life',
  ];

  final List<dynamic> paragraphs = [
    [
      'You have been in bed for an hour now and you still can\'t get to sleep. Maybe you are thinking about your job or your health insurance. Perhaps some problem with your kids has your mind spinning on its late-night hamster wheel of worry. Whatever the issue, you can\'t get it out of your head, so you try to solve it then and there. Before you know it, another hour has passed. Now you start fretting about the fact that you can\'t get to sleep. "I will be a wreck tomorrow", you tell yourself. "I have got to sleep now". Doesn\'t do the trick though, does it?',
      'We have all been there. But the good news is, there is something you can do to help - something more effective than the usual advice to "be positive" or "just stop thinking so much". The latest research on anxiety suggests innovative, even odd, techniques for coping successfully with recurrent worries.',
      'Here are 10 different approaches to try:'
    ],
    [
      'If you had a fear of elevators, you\'d get rid of it if you rode in one a thousand times in a row. At first, you would be very anxious, then less so and eventually it would have no effect (except to make you sick of riding in an elevator). So take the troublesome thought that is nagging at you and say it over and over, silently, slowly, for 20 minutes. It\'s hard to keep your mind on a worry if you repeat it that many times. I call this the "boredom cure" for obvious reasons, but it sure beats feeling overwhelmed by anxiety.'
    ],
    [
      'When you try too hard to control your anxieties, you only heighten them. Instead, exaggerate them and see what happens. For instance, if you fear that your mind will go blank during a presentation, fake it intentionally in the middle of your next one. Say, "Gee, what was I just saying?". Notice how this makes no difference . It\'s nothing to worrry about, right? I did this at a lecture once and no one raised an eyebow. (Perhaps they were not listening anyway!)'
    ],
    [
      'You may occasionally have thoughts that lead you think you will do something terrible ("I am attracted to him. Does that mean i will have an affair?") or that you are going insane (a client of mine who is an attorney kept imagining herself screaming in court). Remember - our minds are creative. Little synapses are firing away at random and every now and then a "crazy" thought jumps out. Everyone has them. Instead of judging yours, describe it to yourself like it\'s a curious object on a shelf and move on.'
    ],
    [
      'That fear of your house burning down because you left the iron on has never come true. That rapid heart beat doesn\'t mean you are having a heart attack, it\'s your body\'s natural response to arousal. Many thoughts and sensations that we interpret as cues for concern - even panic - are just background noise. Think of each of them as fire engine going to another place. You have noticed them; now let them pass by.'
    ],
    [
      'You can let go of a worry by disconnecting yourself from it. One way is to imagine that your anxious thoughts are a show. Maybe they\'re a little guy in a funny hat who tap dances and sings out your worry while you sitin the audience, eating popcorn, a calm observer.'
    ],
    [
      'All too often we take a "Crackberry" approach to our worries: They show up unannounced, like constantly dinging emailsand we stop everything to address them - even if we should be doing something else. But what if you don\'t respond right away? Try setting aside 20 minutes everyday - let\'s say at 4:30 pm. - just for your worries. If you are fretting at 10 am, jot down the reason and resolve to think it through later. By the time 4:30 comes around, many of your troubles won\'t even matter anymore. And you will have spent almost an entire day anxiety - free.',
    ],
    [
      'You constantly check the weather before a big outdoor event. You replay that clumpy comment you made, wishing you could take it back. And, yes, you honk your horn in traffic. When you desperately try to take command of things that can\'t be controlled, you are like a swimmer who panics and slaps at the water, screaming. It gets you nowhere. Instead, imagine that you are floating along on the water with your arms spread out, looking up to the sky. It\'s a paradox, but when you surrender to the moment, you actually feel far more in control.'
    ],
    [
      'You may notice that when your body is tense, you hold your breath. Focusing on breathing is a common but effective technique for calming the nerves. Where is your breath now, and where is your mind? Bring them together. Listen to the movement of your breath. Does your mind wander somewhere else? Call it back. Concentrate only on breathing in and out, beginning and ending, breath to breath, moment to moment.'
    ],
    [
      'When you are a worrier, everything can feel like an emergency. But notice this about all your anxious arousal: It is temporary. Every feeling of panic comes to an end, every concern eventually wears itself out, every so called emergency seeems to evaporate. Ask yourself, "How will I feel about this in a week or a month?" This one, too, really will pass.'
    ],
    [
      'Many of them will turn out to be false, and the consequences of your anxiety - less sleep, a rapid pulse, a little embarrassment - are just inconveniences when it comes down to it. What can you still do even if you feel anxious? Almost anything.'
    ],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Manage worries'),
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
