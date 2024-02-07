import 'package:flutter/material.dart';

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
      appBar: AppBar(title: Text("Sign Up")),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text("Name"))),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), label: Text("Email"))),
          ),
          Padding(
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
                  child: Text(
                      "by signing up you agree to the Terms of services and privacy policy"),
                )
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
        ],
      ),
    );
  }
}
