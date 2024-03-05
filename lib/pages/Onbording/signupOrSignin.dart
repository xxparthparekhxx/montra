import 'dart:async';

import 'package:flutter/material.dart';
import 'package:montra/pages/Onbording/Signup.dart';
import 'package:montra/pages/Onbording/model/page.dart';
import 'package:montra/pages/Onbording/widgets/page.dart';

class Onbording extends StatefulWidget {
  const Onbording({super.key});

  @override
  State<Onbording> createState() => _OnbordingState();
}

class _OnbordingState extends State<Onbording> {
  final pagecont = PageController(initialPage: 0, keepPage: true);

  final pageData = [
    OnboardingPageData(
        bt: "Gain total control of your money",
        st: "Become your own manager and make every cent count",
        ipath: "assets/Onboarding.png"),
    OnboardingPageData(
        bt: "Know where your money goes",
        st: "Track your transactions easily, with categories and financial report",
        ipath: "assets/Onboarding1.png"),
    OnboardingPageData(
        bt: "Planning ahead",
        st: "Setup your budget for each category to keep yourself in control",
        ipath: "assets/Onboarding2.png"),
  ];
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _currentPage = 0;
    pagecont.addListener(() {
      setState(() {
        _currentPage = (pagecont.page ?? 1.0).toInt();
      });
    });
    Timer.periodic(const Duration(seconds: 3), (timer) {
      pagecont.animateToPage(
          pageData.length - 1 > _currentPage ? _currentPage + 1 : 0,
          duration: const Duration(milliseconds: 500),
          curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: PageView(
            controller: pagecont,
            children: [
              for (var ele in pageData) OnboardingPage(data: ele),
            ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 0; i < pageData.length; i++)
              AnimatedContainer(
                curve: Curves.bounceIn,
                duration: const Duration(milliseconds: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(29),
                  color: _currentPage == i ? Colors.deepPurple : Colors.grey,
                ),
                height: _currentPage != i ? 10 : 20,
                width: _currentPage != i ? 10 : 20,
                padding: const EdgeInsets.all(10),
                margin: const EdgeInsets.all(10),
              )
          ],
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: (c) {
              return const Signup();
            }));
          },
          child: Container(
              margin: const EdgeInsets.all(10),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(14)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Signup",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  )
                ],
              )),
        ),
        InkWell(
          onTap: () {},
          child: Container(
              margin: const EdgeInsets.all(10).copyWith(bottom: 20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.deepPurple[100],
                  borderRadius: BorderRadius.circular(14)),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Login",
                    style: TextStyle(color: Colors.deepPurple, fontSize: 20),
                  )
                ],
              )),
        )
      ],
    ));
  }
}
