// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'MyApp',
//       home: HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('MyApp'),
//         actions: [
//           IconButton(
//             icon: Icon(Icons.logout),
//             onPressed: () async {
//               SharedPreferences prefs = await SharedPreferences.getInstance();
//               await prefs.clear(); // Clear all the data stored in SharedPreferences
//               Navigator.pushNamedAndRemoveUntil(
//                 context,
//                 '/login',
//                 (Route<dynamic> route) => false, // Remove all routes until the '/login' route
//               );
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

// class LoginScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login'),
//       ),
//       body: Center(
//         child: RaisedButton(
//           child: Text('Login'),
//           onPressed: () async {
//             SharedPreferences prefs = await SharedPreferences.getInstance();
//             await prefs.setBool('isLoggedIn', true); // Store a boolean value indicating that the user is logged in
//             Navigator.pushNamedAndRemoveUntil(
//               context,
//               '/',
//               (Route<dynamic> route) => false, // Remove all routes until the '/' route
//             );
//           },
//         ),
//       ),
//     );
//   }
// }

// void main() {
//   runApp(
//     MaterialApp(
//       title: 'MyApp',
//       initialRoute: '/',
//       routes: {
//         '/': (context) => FutureBuilder(
//               future: SharedPreferences.getInstance(),
//               builder: (BuildContext context, AsyncSnapshot<SharedPreferences> snapshot) {
//                 if (snapshot.hasData && snapshot.data.getBool('isLoggedIn') == true) {
//                   return HomeScreen();
//                 } else {
//                   return LoginScreen();
//                 }
//               },
//             ),
//         '/login': (context) => LoginScreen(),
//       },
//     ),
//   );
// }
