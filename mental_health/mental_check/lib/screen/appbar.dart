import 'package:flutter/material.dart';
import '../main.dart';
import '../screen/login_screen.dart';
import '../screen/changepassword_screen.dart';
import '../screen/setting_screen.dart';

class AppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      itemBuilder: (BuildContext context) => <PopupMenuEntry>[
        PopupMenuItem(
          child: TextButton(
            child: Text('Change Password'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ChangePasswordPage()),
              );
            },
          ),
        ),
        PopupMenuItem(
          child: TextButton(
            child: Text('Settings'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
        ),
        PopupMenuItem(
          child: TextButton(
            child: Text('Logout'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LoginPage()),
              );
            },
          ),
        ),
      ],
    );
  }
}

// PopupMenuItem(
//           child: TextButton(
//             child: Text('Logout'),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (context) => LoginPage()),
//               );
//             },
//           ),
//         ),