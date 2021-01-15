import 'package:flutter/material.dart';
import 'package:chat_app/services/auth.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("What's Up?"),
      ),
      body: Center(
        child: GestureDetector(
          onTap: () {
            AuthMethods().signInWithGoogle(context);
          },
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                gradient: LinearGradient(
                    colors: [Color(0xFF248A5E), Color(0xFF3EC971)])),
            padding: EdgeInsets.symmetric(horizontal: 24, vertical: 20),
            child: Text(
              "Sign In with Google",
              style: TextStyle(fontSize: 17, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
