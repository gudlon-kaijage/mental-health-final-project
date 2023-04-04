// import 'package:flutter/material.dart';
// import 'package:flutter_app/screens/login_screen.dart';
// import 'package:flutter_app/screens/forget_password_screen.dart';

// class RegisterScreen extends StatefulWidget {
//   @override
//   _RegisterScreenState createState() => _RegisterScreenState();
// }

// class _RegisterScreenState extends State<RegisterScreen> {
//   TextEditingController usernameController = TextEditingController();
//   TextEditingController passwordController = TextEditingController();
//   TextEditingController confirmPasswordController = TextEditingController();

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
//             TextField(
//               controller: confirmPasswordController,
//               decoration: InputDecoration(
//                 labelText: 'Confirm Password',
//               ),
//               obscureText: true,
//             ),
//             SizedBox(
//               height: 16.0,
//             ),
//             RaisedButton(
//               onPressed: () {},
//               child: Text('Register'),
//             ),
//             FlatButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => LoginScreen(),
//                   ),
//                 );
//               },
//               child: Text('Already have an account? Login here!'),
//             ),
//             FlatButton(
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ForgetPasswordScreen(),
//                   ),
//                 );
//               },
//               child: Text('Forgot Password?'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
