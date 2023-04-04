// import 'package:flutter/material.dart';
// import '../main.dart';

// // void register() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});
// //   static const String _title = 'Register App';
// //   // This widget is the root of your application.
// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       title: 'Registration',
// //       theme: ThemeData(
// //         // This is the theme of your application.
// //         //
// //         // Try running your application with "flutter run". You'll see the
// //         // application has a blue toolbar. Then, without quitting the app, try
// //         // changing the primarySwatch below to Colors.green and then invoke
// //         // "hot reload" (press "r" in the console where you ran "flutter run",
// //         // or simply save your changes to "hot reload" in a Flutter IDE).
// //         // Notice that the counter didn't reset back to zero; the application
// //         // is not restarted.
// //         primarySwatch: Colors.blue,
// //       ),
// //       home: const MyHomePage(title: 'Mental health check application'),
// //     );
// //   }
// // }

// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key, required this.title});

// //   // This widget is the home page of your application. It is stateful, meaning
// //   // that it has a State object (defined below) that contains fields that affect
// //   // how it looks.

// //   // This class is the configuration for the state. It holds the values (in this
// //   // case the title) provided by the parent (in this case the App widget) and
// //   // used by the build method of the State. Fields in a Widget subclass are
// //   // always marked "final".

// //   final String title;

// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   int _counter = 0;

// //   void _incrementCounter() {
// //     setState(() {
// //       // This call to setState tells the Flutter framework that something has
// //       // changed in this State, which causes it to rerun the build method below
// //       // so that the display can reflect the updated values. If we changed
// //       // _counter without calling setState(), then the build method would not be
// //       // called again, and so nothing would appear to happen.
// //       _counter++;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     // This method is rerun every time setState is called, for instance as done
// //     // by the _incrementCounter method above.
// //     //
// //     // The Flutter framework has been optimized to make rerunning build methods
// //     // fast, so that you can just rebuild anything that needs updating rather
// //     // than having to individually change instances of widgets.
// //     return Scaffold(
// //         appBar: AppBar(title: const Text('Register Page')),
// //         body: const MyStatefulWidget());
// //   }
// // }

// class Register extends StatefulWidget {
//   const Register({super.key});

//   @override
//   State<Register> createState() => _RegisterState();
// }

// class _RegisterState extends State<Register> {
//   // TextEditingController nameController = TextEditingController();
//   TextEditingController usernameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController confirmpasswordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         resizeToAvoidBottomInset: false,
//         // resizeToAvoidBottomPadding: false,
//         backgroundColor: Colors.white,
//         appBar: AppBar(
//           elevation: 0,
//           brightness: Brightness.light,
//           backgroundColor: Colors.white,
//           leading: IconButton(
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//               icon: Icon(
//                 Icons.arrow_back_ios,
//                 size: 20,
//                 color: Colors.black,
//               )),
//         ),
//         body: SafeArea(
//           child: ListView(
//             children: <Widget>[
//               Container(
//                   alignment: Alignment.center,
//                   padding: const EdgeInsets.all(10),
//                   child: const Text(
//                     'Mental health check application',
//                     style: TextStyle(
//                         color: Colors.blue,
//                         fontWeight: FontWeight.w500,
//                         fontSize: 30),
//                   )),
//               Container(
//                   alignment: Alignment.center,
//                   padding: const EdgeInsets.all(10),
//                   child: const Text(
//                     'Register Page',
//                     style: TextStyle(fontSize: 20),
//                   )),
//               Container(
//                 padding: const EdgeInsets.all(10),
//                 child: TextField(
//                   controller: usernameController,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'User Name',
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//                 child: TextField(
//                   obscureText: true,
//                   controller: passwordController,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Password',
//                   ),
//                 ),
//               ),
//               Container(
//                 padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
//                 child: TextField(
//                   obscureText: true,
//                   controller: confirmpasswordController,
//                   decoration: const InputDecoration(
//                     border: OutlineInputBorder(),
//                     labelText: 'Confirm Password',
//                   ),
//                 ),
//               ),
//               TextButton(
//                 onPressed: () {
//                   //forgot password screen
//                 },
//                 child: const Text(
//                   'Forgot Password',
//                 ),
//               ),
//               Container(
//                   height: 50,
//                   padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
//                   child: ElevatedButton(
//                       child: const Text('Register'),
//                       onPressed: () {
//                         Navigator.push(
//                           context,
//                           MaterialPageRoute(
//                               builder: (context) => const MyHomePage(
//                                   title: 'Mental health check application')),
//                         );
//                       })),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: <Widget>[
//                   const Text('Does not have account?'),
//                   TextButton(
//                     child: const Text(
//                       'Sign in',
//                       style: TextStyle(fontSize: 20),
//                     ),
//                     onPressed: () {
//                       //signup screen
//                     },
//                   )
//                 ],
//               ),
//             ],
//           ),
//         ));
//   }
// }
