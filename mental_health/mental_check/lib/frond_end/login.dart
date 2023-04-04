import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Builder(builder: (context) {
      return Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Center(child: Text('user.email')),
          const SizedBox(height: 100),
          FloatingActionButton(
            onPressed: () {},
          )
        ],
      );
    });
  }
}
