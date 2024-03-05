import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:montra/firebase_options.dart';
import 'package:montra/pages/Onbording/AuthDesider.dart';
import 'package:montra/pages/Onbording/splash.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  bool inited = false;
  Future<void> init() async {
    await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );
    // await Future.delayed(Duration(seconds: 1));
    inited = true;
    setState(() {});
  }

  @override
  void initState() {
    init();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print(inited);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: !inited ? const Splash() : const AuthDesider(),
    );
  }
}
