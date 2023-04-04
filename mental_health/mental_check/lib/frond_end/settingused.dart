import 'package:flutter/material.dart';
import '../main.dart';
// ignore: depend_on_referenced_packages
import 'package:url_launcher/url_launcher.dart';

class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Icon(Icons.share),
            title: Text('Share via Email'),
            onTap: () {
              _launchEmail();
            },
          ),
          ListTile(
            leading: Icon(Icons.feedback),
            title: Text('Feedback'),
            onTap: () {
              _launchFeedback();
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About Us'),
            onTap: () {
              _launchAboutUs();
            },
          ),
        ],
      ),
    );
  }

  _launchEmail() async {
    const uri =
        'mailto:?subject=Check%20out%20this%20app!&body=Hey,%20I%20found%20this%20cool%20app.%20Thought%20you%20might%20like%20it.%20Link%20to%20app%20store%20or%20play%20store%20link%20here.';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  _launchFeedback() async {
    const uri = 'mailto:feedback@example.com';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }

  _launchAboutUs() async {
    const uri = 'https://example.com/about';
    if (await canLaunch(uri)) {
      await launch(uri);
    } else {
      throw 'Could not launch $uri';
    }
  }
}
