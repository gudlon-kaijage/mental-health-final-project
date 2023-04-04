// import 'package:flutter/material.dart';
// import 'package:flutter_app/screens/register_screen.dart';
// import 'package:flutter_app/screens/forget_password_screen.dart';

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   TextEditingController usernameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             TextField(
//               controller: usernameController,
//               decoration: InputDecoration(
//                 labelText: 'Username',
//               ),
//             ),
//             SizedBox(
//               height: 16.0,
//             ),
//             TextField(
//               controller: passwordController,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//               ),
//               obscureText: true,
//             ),
//             SizedBox(
//               height: 16.0,
//             ),
//             RaisedButton(
//               onPressed: () {},
//               child: Text('Login'),
//             ),
//             FlatButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => RegisterScreen(),
//                   ),
//                 );
//               },
//               child: Text("Don't have an account? Register here!"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
