import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:montra/pages/Onbording/signupOrSignin.dart';
import 'package:montra/pages/home/home.dart';

class AuthDesider extends StatefulWidget {
  const AuthDesider({super.key});

  @override
  State<AuthDesider> createState() => _AuthDesiderState();
}

class _AuthDesiderState extends State<AuthDesider> {
  @override
  void initState() {
    super.initState();
    FirebaseAuth.instance.authStateChanges().listen((event) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return FirebaseAuth.instance.currentUser == null
        ? const Onbording()
        : const Home();
  }
}
