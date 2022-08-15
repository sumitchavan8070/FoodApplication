// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable, no_leading_underscores_for_local_identifiers

import 'package:flutter/material.dart';
import 'package:food_application/screens/home_screens/home_screen.dart';

import '../services/firebase_services.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  // const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          image:
              DecorationImage(image: AssetImage('lib/assets/signup_back.jpg')),
        ),
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Container(
            color: Colors.white,
            height: 190,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                /* GoogleAuthButton(
                  onPressed: () {},
                ),
                FacebookAuthButton(
                  onPressed: () {},
                ),
             */
                ElevatedButton(
                    onPressed: () async {
                      await FirebaseServices().signInWithGoogle();
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => HomeScreen()));
                    },
                    child: Text('Sign- in with Google'))
              ],
            ),
          )
        ]),
      ),
    );
  }
}
