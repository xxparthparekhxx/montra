import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:montra/services/assets.dart';

class Signup extends StatefulWidget {
  const Signup({
    super.key,
  });

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text("Name"))),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text("Email"))),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text("Password"),
                    suffix: Icon(Icons.remove_red_eye_outlined))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Checkbox(value: false, onChanged: (e) {}),
                Expanded(
                    child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'By signing up you agree to the ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Terms of Service',
                        style: TextStyle(
                          color: Colors.purple,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle Terms of Service click
                            print('Terms of Service clicked');
                          },
                      ),
                      TextSpan(
                        text: ' and ',
                        style: TextStyle(color: Colors.black),
                      ),
                      TextSpan(
                        text: 'Privacy Policy',
                        style: TextStyle(
                          color: Colors.purple,
                          decoration: TextDecoration.underline,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Handle Privacy Policy click
                            print('Privacy Policy clicked');
                          },
                      ),
                    ],
                  ),
                ))
              ],
            ),
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
          Text("Or with"),
          InkWell(
            onTap: () {
              // Navigator.push(context, MaterialPageRoute(builder: (c) {}));
            },
            child: Container(
                margin: const EdgeInsets.all(10),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(14)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        Assets.google_logo,
                        width: 30,
                      ),
                    ),
                    const Text(
                      "Sign Up with Google",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )
                  ],
                )),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: 'Already have an account? ',
                  style: TextStyle(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
                TextSpan(
                  text: 'Login',
                  style: TextStyle(
                    color: Colors.purple,
                    decoration: TextDecoration.underline,
                  ),
                  recognizer: TapGestureRecognizer()
                    ..onTap = () {
                      // Handle login click
                      print('Login clicked');
                    },
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
