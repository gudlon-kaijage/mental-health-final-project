// ignore: file_names
import 'package:flutter/material.dart';

class DashBoard extends StatelessWidget {
  const DashBoard({super.key});


  @override
  Widget build(BuildContext context) {
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
  }
}
