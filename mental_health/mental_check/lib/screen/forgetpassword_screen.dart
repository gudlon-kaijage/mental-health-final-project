import 'package:flutter/material.dart';
import '../screen/verification_screen.dart';
import '../screen/login_screen.dart';
import '../main.dart';

class ForgetPasswordPage extends StatefulWidget {
  @override
  _ForgetPasswordPageState createState() => _ForgetPasswordPageState();
}

class _ForgetPasswordPageState extends State<ForgetPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  String _newPassword = "";
  String _confirmPassword = "";

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
      // Submit form to server or database
      // You can implement this functionality
    }
  }

  // crossAxisAlignment: CrossAxisAlignment.start,
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
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "New Password",
                  hintText: "Enter new password",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter a new password";
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _newPassword = value;
                  });
                },
              ),
              SizedBox(height: 15),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: "Confirm Password",
                  hintText: "Enter confirmed password",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please confirm your new password";
                  }
                  if (value != _newPassword) {
                    return "Passwords do not match";
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _confirmPassword = value;
                  });
                },
              ),
              SizedBox(height: 15.0),
              Center(
                child: ElevatedButton(
                  onPressed: _submitForm,
                  child: Text("Submit"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
