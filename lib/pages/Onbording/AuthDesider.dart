import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:montra/pages/Onbording/signupOrSignin.dart';
import 'package:montra/pages/home/home.dart';

class AuthDesider extends StatelessWidget {
  const AuthDesider({super.key});

  @override
  Widget build(BuildContext context) {
    return FirebaseAuth.instance.currentUser == null
        ? const Onbording()
        : const Home();
  }
}
