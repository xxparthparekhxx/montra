import 'package:flutter/material.dart';
import 'package:montra/pages/Onbording/model/page.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key, required this.data});
  final OnboardingPageData data;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          Image.asset(data.ipath),
          Text(
            data.bt,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              data.st,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 20, color: Colors.blueGrey),
            ),
          )
        ],
      ),
    );
  }
}
