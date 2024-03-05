import 'package:flutter/material.dart';

class Splash extends StatelessWidget {
  const Splash({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Text(
          "montra",
          style: TextStyle(
              color: Colors.white, fontSize: 45, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
