import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';
import 'package:mental_check/screen/anxiety_screen.dart';
import 'package:mental_check/screen/changepassword_screen.dart';
import 'package:mental_check/screen/dashboard_screen.dart';
import 'package:mental_check/screen/depression_screen.dart';
import 'package:mental_check/screen/emotion_screen.dart';
import 'package:mental_check/screen/help_screen.dart';
// import 'package:mental_check/screen/dashbord_screen.dart';
import 'package:mental_check/screen/home_screen.dart';
import 'package:mental_check/screen/information_screen.dart';
import 'package:mental_check/screen/next_screen.dart';
import 'package:mental_check/screen/positive_screen.dart';
import 'package:mental_check/screen/register_screen.dart';
import 'package:mental_check/screen/login_screen.dart';
import 'package:mental_check/screen/forgetpassword_screen.dart';
import 'package:mental_check/screen/setting_screen.dart';
import 'package:mental_check/screen/stress_screen.dart';
import 'package:mental_check/screen/student_screen.dart';
import 'package:mental_check/screen/thinking_screen.dart';
import 'package:mental_check/screen/username_forgetpassword.dart';
import 'package:mental_check/screen/verification_screen.dart';
import 'package:mental_check/screen/welcome_screen.dart';
import 'package:mental_check/screen/appbar.dart';
import 'package:mental_check/screen/splash_screen.dart';
import 'package:mental_check/screen/worries_screen.dart';
//import 'package:mental_check/frond_end/newlogin.dart';
// import 'frond_end/newforgetpassword.dart';
// import 'frond_end/newlogin.dart';
// import 'frond_end/newregister.dart';
// import 'frond_end/Dashboard.dart';
// import 'frond_end/register.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  static const String _title = 'Sample App';
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // home: SplashScreen(),
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/register': (context) => RegisterPage(),
        '/username_forget_password': (context) => UsernameForgetPasswordPage(),
        '/verification': (context) => VerificationPage(),
        '/forget_password': (context) => ForgetPasswordPage(),
        '/home': (context) => HomePage(),
        '/dashboard': (context) => DashboardPage(),
        '/welcome': (context) => WelcomePage(),
        '/information': (context) => InformationPage(),
        '/help': (context) => HelpPage(),
        '/anxiety': (context) => AnxietyPage(),
        '/depression': (context) => DepressionPage(),
        '/stress': (context) => StressPage(),
        '/next': (context) => NextPage(),
        '/emotions': (context) => EmotionsPage(),
        '/students': (context) => StudentsPage(),
        '/changepassword': (context) => ChangePasswordPage(),
        '/settings': (context) => SettingsPage(),
        '/positive': (context) => PositivePage(),
        '/thinking': (context) => ThinkingPage(),
        '/worries': (context) => WorriesPage(),
      },
      // home: const MyHomePage(title: 'Mental health check application'), //- used
      // home: const Center(child: Text('Mental health check application')),
      // home: RegisterPage(),
    );
  }
}

// class MainPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Main Page'),
//         actions: [
//           PopupMenuButton(
//             itemBuilder: (BuildContext context) => <PopupMenuEntry>[
//               PopupMenuItem(
//                 child: Text('Logout'),
//                 value: 'logout',
//               ),
//             ],
//             onSelected: (value) async {
//               if (value == 'logout') {
//                 SharedPreferences prefs = await SharedPreferences.getInstance();
//                 await prefs.clear(); // Clear all the data stored in SharedPreferences
//                 Navigator.pushNamedAndRemoveUntil(
//                   context,
//                   '/login',
//                   (Route<dynamic> route) => false, // Remove all routes until the '/login' route
//                 );
//               }
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Text('Welcome to MyApp!'),
//       ),
//     );
//   }
// }

// class DashboardPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Dashboard Page'),
//         actions: [
//           PopupMenuButton(
//             itemBuilder: (BuildContext context) => <PopupMenuEntry>[
//               PopupMenuItem(
//                 child: Text('Logout'),
//                 value: 'logout',
//               ),
//             ],
//             onSelected: (value) async {
//               if (value == 'logout') {
//                 SharedPreferences prefs = await SharedPreferences.getInstance();
//                 await prefs
//                     .clear(); // Clear all the data stored in SharedPreferences
//                 Navigator.pushNamedAndRemoveUntil(
//                   context,
//                   '/login',
//                   (Route<dynamic> route) =>
//                       false, // Remove all routes until the '/login' route
//                 );
//               }
//             },
//           ),
//         ],
//       ),
//       body: Center(
//         child: Text('Welcome to the Dashboard Page!'),
//       ),
//     );
//   }
// }

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           child: Text('Login'),
//           onPressed: () async {
//             SharedPreferences prefs = await SharedPreferences.getInstance();
//             await prefs.setBool('isLoggedIn',
//                 true); // Store a boolean value indicating that the user is logged in
//             Navigator.pushNamedAndRemoveUntil(
//               context,
//               '/dashboard',
//               (Route<dynamic> route) =>
//                   false, // Remove all routes until the '/home' route
//             );
//           },
//         ),
//       ),
//     );
//   }
// }


// class MyHomePage extends StatefulWidget {
//   const MyHomePage({super.key, required this.title});

//   // This widget is the home page of your application. It is stateful, meaning
//   // that it has a State object (defined below) that contains fields that affect
//   // how it looks.

//   // This class is the configuration for the state. It holds the values (in this
//   // case the title) provided by the parent (in this case the App widget) and
//   // used by the build method of the State. Fields in a Widget subclass are
//   // always marked "final".

//   final String title;

//   @override
//   State<MyHomePage> createState() => _MyHomePageState();
// }

// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;

//   void _incrementCounter() {
//     setState(() {
//       // This call to setState tells the Flutter framework that something has
//       // changed in this State, which causes it to rerun the build method below
//       // so that the display can reflect the updated values. If we changed
//       // _counter without calling setState(), then the build method would not be
//       // called again, and so nothing would appear to happen.
//       _counter++;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     // This method is rerun every time setState is called, for instance as done
//     // by the _incrementCounter method above.
//     //
//     // The Flutter framework has been optimized to make rerunning build methods
//     // fast, so that you can just rebuild anything that needs updating rather
//     // than having to individually change instances of widgets.
//     return Scaffold(
//         appBar: AppBar(title: const Text('Login Page')),
//         body: const MyStatefulWidget());
//   }
// }

// class MyStatefulWidget extends StatefulWidget {
//   const MyStatefulWidget({Key? key}) : super(key: key);

//   @override
//   State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
// }

// class _MyStatefulWidgetState extends State<MyStatefulWidget> {
//   TextEditingController nameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//         padding: const EdgeInsets.all(10),
//         child: ListView(
//           children: <Widget>[
//             Container(
//                 alignment: Alignment.center,
//                 padding: const EdgeInsets.all(10),
//                 child: const Text(
//                   'Mental health check application',
//                   style: TextStyle(
//                       color: Colors.blue,
//                       fontWeight: FontWeight.w500,
//                       fontSize: 30),
//                 )),
//             Container(
//                 alignment: Alignment.center,
//                 padding: const EdgeInsets.all(10),
//                 child: const Text(
//                   'Login Page',
//                   style: TextStyle(fontSize: 20),
//                 )),
//             Container(
//               padding: const EdgeInsets.all(10),
//               child: TextField(
//                 controller: nameController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'User Name',
//                 ),
//               ),
//             ),
//             Container(
//               padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//               child: TextField(
//                 obscureText: true,
//                 controller: passwordController,
//                 decoration: const InputDecoration(
//                   border: OutlineInputBorder(),
//                   labelText: 'Password',
//                 ),
//               ),
//             ),
//             TextButton(
//               onPressed: () {
//                 //forgot password screen
//               },
//               child: const Text(
//                 'Forgot Password',
//               ),
//             ),
//             Container(
//                 height: 50,
//                 padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                 child: ElevatedButton(
//                     child: const Text('Login'),
//                     onPressed: () {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                             builder: (context) => const Register()),
//                       );
//                     })),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: <Widget>[
//                 const Text('Does not have account?'),
//                 TextButton(
//                   child: const Text(
//                     'Sign in',
//                     style: TextStyle(fontSize: 20),
//                   ),
//                   onPressed: () {
//                     //signup screen
//                   },
//                 )
//               ],
//             ),
//           ],
//         ));
//   }
// }
