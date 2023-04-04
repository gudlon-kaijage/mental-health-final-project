// import 'package:flutter/material.dart';
// import '../main.dart';
// import 'forgetpassword_screen.dart';
// import 'login_screen.dart';
// import 'dashboard_screen.dart';

// class RegisterPage extends StatefulWidget {
//   @override
//   _RegisterPageState createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   String _username = '';
//   String _password = '';
//   String _confirmPassword = '';
//   String _errorMessage = '';

//   void _onRegisterButtonPressed() {
//     // register user with username and password
//     if (_password == _confirmPassword) {
//       // handle successful registration
//       Navigator.pushReplacementNamed(context, '/dashboard');
//     } else {
//       setState(() {
//         _errorMessage = 'Passwords do not match';
//       });
//     }
//   }

//   void _onLoginButtonPressed() {
//     // handle "I already have an account" button press
//     Navigator.pushReplacementNamed(context, '/login');
//   }

//   void _onForgetPasswordButtonPressed() {
//     // handle forget password button press
//     //print('Forget password button pressed');
//     Navigator.push(
//       context,
//       MaterialPageRoute(builder: (context) => ForgetPasswordPage()),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Register Page'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             TextField(
//               decoration: InputDecoration(
//                 labelText: 'Username',
//                 hintText: 'Enter your username',
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   _username = value;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 hintText: 'Enter your password',
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   _password = value;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             TextField(
//               obscureText: true,
//               decoration: InputDecoration(
//                 labelText: 'Confirm Password',
//                 hintText: 'Confirm your password',
//                 border: OutlineInputBorder(),
//               ),
//               onChanged: (value) {
//                 setState(() {
//                   _confirmPassword = value;
//                 });
//               },
//             ),
//             SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: _onRegisterButtonPressed,
//               child: Text('Register'),
//             ),
//             SizedBox(height: 20),
//             Text(
//               _errorMessage,
//               style: TextStyle(
//                 color: Colors.red,
//                 fontSize: 16,
//               ),
//             ),
//             TextButton(
//               onPressed: _onLoginButtonPressed,
//               child: Text('I already have an account'),
//             ),
//             TextButton(
//               onPressed: _onForgetPasswordButtonPressed,
//               child: Text('Forget Password'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
