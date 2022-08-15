// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_application/auth/sign_in.dart';
//import 'package:food_application/screens/home_screens/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return /*const*/ MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const SignIn(),
      //home: HomeScreen(),
    );
  }
}
