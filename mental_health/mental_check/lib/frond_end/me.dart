// // Import necessary packages and files
// import 'package:flutter/material.dart';
// import 'package:my_app/screens/register_screen.dart';
// import 'package:my_app/screens/forget_password_screen.dart';

// // Define the LoginScreen widget
// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// // Define the private _LoginScreenState class
// class _LoginScreenState extends State<LoginScreen> {
//   // Define the controllers for the text fields
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();

//   @override
//   void dispose() {
//     // Clean up the controllers when the widget is disposed
//     _usernameController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Username text field
//             TextField(
//               controller: _usernameController,
//               decoration: InputDecoration(
//                 hintText: 'Username',
//               ),
//             ),
//             SizedBox(height: 16.0),

//             // Password text field
//             TextField(
//               controller: _passwordController,
//               obscureText: true,
//               decoration: InputDecoration(
//                 hintText: 'Password',
//               ),
//             ),
//             SizedBox(height: 16.0),

//             // Login button
//             RaisedButton(
//               child: Text('Login'),
//               onPressed: () {
//                 // Handle login logic here
//               },
//             ),
//             SizedBox(height: 16.0),

//             // Don't have an account? Register button
//             FlatButton(
//               child: Text("Don't have an account? Register"),
//               onPressed: () {
//                 // Navigate to the RegisterScreen
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => RegisterScreen(),
//                   ),
//                 );
//               },
//             ),
//             SizedBox(height: 16.0),

//             // Forgot password button
//             FlatButton(
//               child: Text("Forgot password?"),
//               onPressed: () {
//                 // Navigate to the ForgetPasswordScreen
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => ForgetPasswordScreen(),
//                   ),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// // Define the RegisterScreen widget
// class RegisterScreen extends StatefulWidget {
//   @override
//   _RegisterScreenState createState() => _RegisterScreenState();
// }

// // Define the private _RegisterScreenState class
// class _RegisterScreenState extends State<RegisterScreen> {
//   // Define the controllers for the text fields
//   final _usernameController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();

//   @override
//   void dispose() {
//     // Clean up the controllers when the widget is disposed
//     _usernameController.dispose();
//     _passwordController.dispose();
//     _confirmPasswordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Register'),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Username text field
//             TextField(
//               controller:
