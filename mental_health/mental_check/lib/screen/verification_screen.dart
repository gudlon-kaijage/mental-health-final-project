import 'package:flutter/material.dart';
import '../screen/username_forgetpassword.dart';
import '../screen/forgetpassword_screen.dart';
import '../main.dart';

class VerificationPage extends StatefulWidget {
  @override
  _VerificationPageState createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  final _formKey = GlobalKey<FormState>();
  String _otp = "";

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => ForgetPasswordPage()),
      );
      // Verify OTP with server or database
      // You can implement this functionality
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Verification"),
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
                  labelText: "OTP",
                  hintText: "Enter the OTP sent to your email",
                  border: OutlineInputBorder(),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Please enter the OTP";
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    _otp = value;
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
