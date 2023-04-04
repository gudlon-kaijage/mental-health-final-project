import 'package:flutter/material.dart';
import 'register_screen.dart';
import 'dashboard_screen.dart';
import 'splash_screen.dart';
import '../main.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _username = '';
  String _password = '';
  String _errorMessage = '';

  void _onLoginButtonPressed() {
    // authenticate user with username and password
    if (_username == 'username' && _password == 'password') {
      Navigator.pushReplacementNamed(context, '/dashboard');
    } else {
      setState(() {
        _errorMessage = 'Invalid username or password';
      });
    }
  }

  void _onRegisterButtonPressed() {
    // handle register button press
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => RegisterPage()),
    );
    // print('Register button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Username',
                hintText: 'Enter your username',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _username = value;
                });
              },
            ),
            SizedBox(height: 15),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Enter your password',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  _password = value;
                });
              },
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: _onLoginButtonPressed,
              child: Text('Login'),
            ),
            SizedBox(height: 15),
            Text(
              _errorMessage,
              style: TextStyle(
                color: Colors.red,
                fontSize: 14,
              ),
            ),
            TextButton(
              onPressed: _onRegisterButtonPressed,
              child: Text('Don\'t have an account? Register here'),
            ),
          ],
        ),
      ),
    );
  }
}
