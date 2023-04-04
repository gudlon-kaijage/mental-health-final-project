import 'package:flutter/material.dart';
import '../screen/register_screen.dart';
import '../screen/verification_screen.dart';
import '../main.dart';

class UsernameForgetPasswordPage extends StatefulWidget {
  @override
  _UsernameForgetPasswordPageState createState() => _UsernameForgetPasswordPageState();
}

class _UsernameForgetPasswordPageState extends State<UsernameForgetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  String _username = "";

  void _sendOTP() {
    if (_formKey.currentState!.validate()) {
      // Send OTP to server or database
      // You can implement this functionality
      Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => VerificationPage()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Forgot Password"),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 15),
              TextFormField(
                decoration: InputDecoration(
                  labelText: "Username",
                  hintText: "Enter your username",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter your username";
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _username = value;
                  });
                },
              ),
              SizedBox(height: 15.0),
              Center(
                child: ElevatedButton(
                  onPressed: _sendOTP,
                  child: Text("Send OTP"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
