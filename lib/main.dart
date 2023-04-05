import 'package:flutter/material.dart';
import 'package:icebuddy/profile.dart';
import 'package:icebuddy/useless.dart';
import 'Login.dart';
import 'Sign_In.dart';
import 'homescreen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: useless(),
    );
  }
}
